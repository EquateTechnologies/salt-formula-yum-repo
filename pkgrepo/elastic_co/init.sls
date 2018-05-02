{% from "pkgrepo/map.jinja" import pkgrepo_settings with context %}

{% set major_version = pkgrepo_settings.elastic_co.major_version|default(6) %}

pkgrepo-elastic_co:
  file.managed:
    - name: /etc/yum.repos.d/pkgrepo-elastic_co.repo
    - source: salt://pkgrepo/elastic_co/template.repo
    - template: jinja
    - user: root
    - group: root
    - mode: 0644
    - context:
      major_version: {{ major_version }}
      repo_enabled: {{ pkgrepo_settings.elastic_co.enabled|default(False) }}
      repo_options: {{ pkgrepo_settings.elastic_co.options|default({}) }}
