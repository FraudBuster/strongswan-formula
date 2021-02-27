# -*- coding: utf-8 -*-
# vim: ft=sls

{%- from tpldir ~ "/map.jinja" import strongswan with context %}

include:
  - .config

strongswan-service:
  service.running:
    - name: {{ strongswan.service.name }}
    - enable: True
    - reload: {{ strongswan.service.reload }}
    - watch:
      - file: {{ strongswan.config.global_options }}
      - file: {{ strongswan.config.global_secrets }}

