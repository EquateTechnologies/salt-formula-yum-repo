{% from "pkgrepo/map.jinja" import pkgrepo_settings with context %}

pkgrepo-atomicorp:
  file.managed:
    - name: /etc/yum.repos.d/pkgrepo-atomicorp.repo
    - source: salt://pkgrepo/atomicorp/template.repo
    - template: jinja
    - user: root
    - group: root
    - mode: 0644
    - context:
      repo_enabled: {{ pkgrepo_settings.atomicorp.enabled|default(False) }}
      repo_options: {{ pkgrepo_settings.atomicorp.options|default({}) }}
