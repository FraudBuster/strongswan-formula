---
# manage AppArmor rules for Strongswan
# for the 'dropin' directories

{%- set topdir = tpldir.split('/')[0] %}
{%- from tpldir ~ "/map.jinja" import strongswan with context %}
{%- from tpldir ~ "/libtofs.jinja" import files_switch with context %}

apparmor_usr.lib.ipsec.charon:
  file.managed:
    - name: {{ strongswan.apparmor.rules_file }}
    - source: {{ files_switch(['apparmor-usr.lib.ipsec.charon'],
                              lookup='apparmor-ipsec-charon'
                 )
              }}
    - user: root
    - group: root
    - mode: '0644'
    - template: jinja
    - context:
        secrets_dir: {{ strongswan.config.dropin_secrets }}
    - watch_in:
      - service: apparmor_service

apparmor_service:
  service.running:
    - reload: True
    - name: apparmor
