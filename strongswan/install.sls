# -*- coding: utf-8 -*-
# vim: ft=sls

{%- from tpldir ~ "/map.jinja" import strongswan with context %}

{#- Simulating `grains.osfinger`, which is avoided since not available in all distros #}
{%- if [grains.os, grains.osrelease] == ['Amazon', '2'] %}
strongswan-install-repo-epel:
  pkgrepo.managed:
    - name: epel
    - humanname: Extra Packages for Enterprise Linux 7 - $basearch
    - mirrorlist: https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=$basearch
    - enabled: 1
    - gpgcheck: 1
    - gpgkey: https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7
    - failovermethod: priority
    - require_in:
      - pkg: strongswan-install-package
{%- endif %}

strongswan-install-package:
  pkg.installed:
    - name: {{ strongswan.pkg }}
