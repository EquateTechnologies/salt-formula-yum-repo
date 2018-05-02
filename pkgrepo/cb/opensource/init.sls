{% from "pkgrepo/map.jinja" import pkgrepo_settings with context %}

pkgrepo-cb-opensource:
  file.managed:
    - name: /etc/yum.repos.d/pkgrepo-cb-opensource.repo
    - source: salt://pkgrepo/cb/opensource/template.repo
    - template: jinja
    - user: root
    - group: root
    - mode: 0644
    - context:
      repo_enabled: {{ pkgrepo_settings.cb.opensource.enabled|default(False) }}
      repo_options: {{ pkgrepo_settings.cb.opensource.options|default({}) }}
