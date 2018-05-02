{% from "pkgrepo/map.jinja" import pkgrepo_settings with context %}

{% set graylog_version = pkgrepo_settings.graylog.version|default('2.4') %}

{% if 'rpm' in pkgrepo_settings.graylog and pkgrepo_settings.graylog.rpm != '' %}
graylog_release:
  pkg.installed:
    - sources:
      - graylog-{{ graylog_version }}-repository: {{ pkgrepo_settings.graylog.rpm }}
{% else %}
graylog-rpm-gpg-key:
  file.managed:
    - name: /etc/pki/rpm-gpg/RPM-GPG-KEY-graylog
    - source: https://raw.githubusercontent.com/Graylog2/fpm-recipes/master/recipes/graylog-collector-repository/files/rpm/RPM-GPG-KEY-graylog-collector
    - source_hash: md5=b9a593c0d80ccd4098f0b4c8cafc3312

pkgrepo-graylog:
  file.managed:
    - name: /etc/yum.repos.d/pkgrepo-graylog.repo
    - source: salt://pkgrepo/graylog/template.repo
    - template: jinja
    - user: root
    - group: root
    - mode: 0644
    - context:
      graylog_version: {{ graylog_version }}
      repo_enabled: {{ pkgrepo_settings.graylog.enabled|default(False) }}
      repo_options: {{ pkgrepo_settings.graylog.options|default({}) }}
    - require:
      - file: graylog-rpm-gpg-key
{% endif %}
