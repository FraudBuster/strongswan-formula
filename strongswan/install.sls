# -*- coding: utf-8 -*-
# vim: ft=sls

{%- from tpldir ~ "/map.jinja" import strongswan with context %}

strongswan-pkg:
  pkg.installed:
    - name: {{ strongswan.pkg }}
