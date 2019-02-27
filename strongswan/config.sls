# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set topdir = tpldir.split('/')[0] %}
{%- from tpldir ~ "/map.jinja" import strongswan with context %}
{%- from tpldir ~ "/macros.jinja" import files_switch with context %}

include:
  - .install

strongswan-config:
  file.managed:
    - name: {{ strongswan.config.options }}
    - source: {{ files_switch(
                    salt['config.get'](
                        topdir ~ ':tofs:files:strongswan-config',
                        ['ipsec.conf.jinja']
                    )
              ) }}
    - mode: 644
    - user: root
    - group: root
    - template: jinja
