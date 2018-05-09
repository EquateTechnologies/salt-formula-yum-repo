{% from "pkgrepo/map.jinja" import pkgrepo_settings with context %}

pkgrepo-yarn:
  file.managed:
    - name: /etc/yum.repos.d/pkgrepo-yarn.repo
    - source: salt://pkgrepo/yarn/template.repo
    - template: jinja
    - user: root
    - group: root
    - mode: 0644
    - context:
      repo_enabled: {{ pkgrepo_settings.yarn.enabled|default(False) }}
      repo_options: {{ pkgrepo_settings.yarn.options|default({}) }}
