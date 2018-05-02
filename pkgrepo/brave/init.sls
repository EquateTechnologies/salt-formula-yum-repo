{% from "pkgrepo/map.jinja" import pkgrepo_settings with context %}

pkgrepo-brave:
  file.managed:
    - name: /etc/yum.repos.d/pkgrepo-brave.repo
    - source: salt://pkgrepo/brave/template.repo
    - template: jinja
    - user: root
    - group: root
    - mode: 0644
    - context:
      repo_enabled: {{ pkgrepo_settings.brave.enabled|default(False) }}
      repo_options: {{ pkgrepo_settings.brave.options|default({}) }}
