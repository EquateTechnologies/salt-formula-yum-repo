{% from "pkgrepo/map.jinja" import pkgrepo_settings with context %}

{% set salt_version = pkgrepo_settings.salt.release_version|default('2018.3') %}

salt-rpm-gpg-key:
  file.managed:
    - name: /etc/pki/rpm-gpg/SALTSTACK-GPG-KEY.pub
    - source: https://repo.saltstack.com/yum/redhat/{{ grains.osmajorrelease }}/{{ grains.osarch }}/{{ salt_version }}/SALTSTACK-GPG-KEY.pub
    - source_hash: md5=9e0d77c16ba1fe57dfd7f1c5c2130438

pkgrepo-salt:
  file.managed:
    - name: /etc/yum.repos.d/pkgrepo-salt.repo
    - source: salt://pkgrepo/salt/template.repo
    - template: jinja
    - user: root
    - group: root
    - mode: 0644
    - require:
      - file: salt-rpm-gpg-key
    - context:
      salt_version: {{ salt_version }}
      repo_enabled: {{ pkgrepo_settings.salt.enabled|default(False) }}
      repo_options: {{ pkgrepo_settings.salt.options|default({}) }}
    - require:
      - file: salt-rpm-gpg-key
