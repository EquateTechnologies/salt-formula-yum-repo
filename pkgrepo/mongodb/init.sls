{% from "pkgrepo/map.jinja" import pkgrepo_settings with context %}

{% set mongodb_version = pkgrepo_settings.mongodb.release_version|default('3.4') %}

pkgrepo-mongodb:
  file.managed:
    - name: /etc/yum.repos.d/pkgrepo-mongodb.repo
    - source: salt://pkgrepo/mongodb/template.repo
    - template: jinja
    - user: root
    - group: root
    - mode: 0644
    - context:
      mongodb_version: {{ mongodb_version }}
      repo_enabled: {{ pkgrepo_settings.mongodb.enabled|default(False) }}
      repo_options: {{ pkgrepo_settings.mongodb.options|default({}) }}
