# -*- coding: utf-8 -*-
# vim: ft=sls

{%- from tpldir ~ "/map.jinja" import strongswan with context %}

include:
  - .config

strongswan-service:
  service.running:
    - name: {{ strongswan.service.name }}
    - enable: True
    - reload: True
    - watch:
      - file: {{ strongswan.config.global_options }}
      - file: {{ strongswan.config.dropin_options ~ '/*.conf' }}
      - file: {{ strongswan.config.global_secrets }}
      - file: {{ strongswan.config.dropin_secrets ~ '/*.secret' }}

