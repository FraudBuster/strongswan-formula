# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set topdir = tpldir.split('/')[0] %}
{%- from tpldir ~ "/map.jinja" import strongswan with context %}
{%- from tpldir ~ "/libtofs.jinja" import files_switch with context %}

include:
  - .install
{%- if strongswan.apparmor.add_rules %}
  - .apparmor
{%- endif %}
  - .config
  - .service
