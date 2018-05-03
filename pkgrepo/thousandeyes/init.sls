{% from "pkgrepo/map.jinja" import pkgrepo_settings with context %}

pkgrepo-thousandeyes:
  file.managed:
    - name: /etc/yum.repos.d/pkgrepo-thousandeyes.repo
    - source: salt://pkgrepo/thousandeyes/template.repo
    - template: jinja
    - user: root
    - group: root
    - mode: 0644
    - context:
      repo_enabled: {{ pkgrepo_settings.thousandeyes.enabled|default(False) }}
      repo_options: {{ pkgrepo_settings.thousandeyes.options|default({}) }}
