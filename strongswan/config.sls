# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set topdir = tpldir.split('/')[0] %}
{%- from tpldir ~ "/map.jinja" import strongswan with context %}
{%- from tpldir ~ "/libtofs.jinja" import files_switch with context %}

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
strongswan-config-file-global-options:
  file.managed:
    - name: {{ strongswan.config.global_options }}
    - source: {{ files_switch(['ipsec.conf.jinja'],
                              lookup='ipsec-global-options'
                 )
              }}
    - mode: '0644'
    - user: root
    - group: {{ strongswan.group }}
    - template: jinja
    - context:
        dropin_dir: {{ strongswan.config.dropin_options }}
        conn_default: {{ conn_default|json }}
        conn_dropin: {{ conn_dropin }}
        connections: {{ connections }}

# Connections
{% if connections %}
strongswan-config-directory-ipsec-dropin-connections:
  file.directory:
    - name: {{ strongswan.config.dropin_options }}
    - user: root
    - group: {{ strongswan.group }}
    - clean: True
{% endif %}

{% for connection, data in connections.items() %}
  {% set dropin_file = strongswan.config.dropin_options ~ '/' ~ connection ~ '.conf' %}
strongswan-config-file-ipsec-conn-{{ connection }}:
  file.managed:
    - name: {{ dropin_file }}
    - source: {{ files_switch(['connection.conf.jinja'],
                              lookup='ipsec-conn-config'
                 )
              }}
    - template: jinja
    - user: root
    - group: {{ strongswan.group }}
    - mode: '0644'
    - context:
        connection: {{ connection }}
        data: {{ data|json }}
    - watch_in:
      - service: strongswan-service
{% endfor %}

# Global secrets
strongswan-config-file-ipsec-global-secrets:
  file.managed:
    - name: {{ strongswan.config.global_secrets }}
    - source: {{ files_switch(['ipsec.secrets.jinja'],
                              lookup='ipsec-global-secrets'
                 )
              }}
    - mode: '0600'
    - user: root
    - group: {{ strongswan.group }}
    - template: jinja
    - context:
        dropin_dir: {{ strongswan.config.dropin_secrets }}
        secrets: {{ secrets }}

# Secrets
{% if secrets %}
strongswan-config-directory-ipsec-dropin-secrets:
  file.directory:
    - name: {{ strongswan.config.dropin_secrets }}
    - user: root
    - group: {{ strongswan.group }}
    - mode: '0600'
    - clean: True
{% endif %}

{% for secret, data in secrets.items() %}
  {% set dropin_file = strongswan.config.dropin_secrets ~ '/' ~ secret ~ '.secrets' %}
strongswan-config-file-ipsec-secret-{{ secret }}:
  file.managed:
    - name: {{ dropin_file }}
    - source: {{ files_switch(['secret.secrets.jinja'],
                              lookup='ipsec-secret-config'
                 )
              }}
    - template: jinja
    - user: root
    - group: {{ strongswan.group }}
    - mode: '0600'
    - context:
        secret: {{ secret }}
        data: {{ data|json }}
    - watch_in:
      - service: strongswan-service
{% endfor %}

