# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set topdir = tpldir.split('/')[0] %}
{%- from tpldir ~ "/map.jinja" import strongswan with context %}
{%- from tpldir ~ "/macros.jinja" import files_switch with context %}

# splitting defined connections in two dicts
# one for %default options
# one for others
{%- set conn = salt['pillar.get']('strongswan:conn', {}) %}
{%- set connections = {} %}
{%- set conn_default = {} %}

{%- for k, v in conn.items() %}
  {%- if k == '_default' %}
    {%- do conn_default.update(v) %}
  {% else %}
    {%- do connections.update({k:v}) %}
  {%- endif %}
{%- endfor %}

{% if connections %}
  {% set conn_dropin = True %}
{% else %}
  {% set conn_dropin = False %}
{% endif %}

{%- set secrets = salt['pillar.get']('strongswan:secrets', {}) %}

include:
  - .install

# Global options
ipsec-global-options:
  file.managed:
    - name: {{ strongswan.config.global_options }}
    - source: {{ files_switch(
                    salt['config.get'](
                        topdir ~ ':tofs:files:ipsec-global-options',
                        ['ipsec.conf.jinja']
                    )
              ) }}
    - mode: 644
    - user: root
    - group: root
    - template: jinja
    - context:
        dropin_dir: {{ strongswan.config.dropin_options }}
        conn_default: {{ conn_default|json }}
        conn_dropin: {{ conn_dropin }}
        connections: {{ connections }}

# Connections
{% if connections %}
ipsec-dropin-options:
  file.directory:
    - name: {{ strongswan.config.dropin_options }}
    - user: root
    - group: root
    - clean: True
{% endif %}

{% for connection, data in connections.items() %}
  {% set dropin_file = strongswan.config.dropin_options ~ '/' ~ connection ~ '.conf' %}
ipsec-conn-{{ connection }}-config:
  file.managed:
    - name: {{ dropin_file }}
    - source: {{ files_switch(
                    salt['config.get'](
                        topdir ~ ':tofs:files:ipsec-connection-config',
                        ['connection.conf.jinja']
                    )
              ) }}
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - context:
        connection: {{ connection }}
        data: {{ data|json }}
    - watch_in:
      - service: strongswan-service
{% endfor %}

# Global secrets
ipsec-global-secrets:
  file.managed:
    - name: {{ strongswan.config.global_secrets }}
    - source: {{ files_switch(
                    salt['config.get'](
                        topdir ~ ':tofs:files:ipsec-global-secrets',
                        ['ipsec.secrets.jinja']
                    )
              ) }}
    - mode: 600
    - user: root
    - group: root
    - template: jinja
    - context:
        dropin_dir: {{ strongswan.config.dropin_secrets }}
        secrets: {{ secrets }}

# Secrets
{% if secrets %}
ipsec-dropin-secrets:
  file.directory:
    - name: {{ strongswan.config.dropin_secrets }}
    - user: root
    - group: root
    - mode: 600
    - clean: True
{% endif %}

{% for secret, data in secrets.items() %}
  {% set dropin_file = strongswan.config.dropin_secrets ~ '/' ~ secret ~ '.secrets' %}
ipsec-secret-{{ secret }}-config:
  file.managed:
    - name: {{ dropin_file }}
    - source: {{ files_switch(
                    salt['config.get'](
                        topdir ~ ':tofs:files:ipsec-secret-config',
                        ['secret.secrets.jinja']
                    )
              ) }}
    - template: jinja
    - user: root
    - group: root
    - mode: 600
    - context:
        secret: {{ secret }}
        data: {{ data|json }}
    - watch_in:
      - service: strongswan-service
{% endfor %}

