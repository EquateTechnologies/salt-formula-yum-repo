{% from "pkgrepo/map.jinja" import pkgrepo_settings with context %}

pkgrepo-brave:
  file.managed:
    - name: /etc/yum.repos.d/pkgrepo-duosecurity.repo
    - source: salt://pkgrepo/duosecurity/template.repo
    - template: jinja
    - user: root
    - group: root
    - mode: 0644
    - context:
      repo_enabled: {{ pkgrepo_settings.duosecurity.enabled|default(False) }}
      repo_options: {{ pkgrepo_settings.duosecurity.options|default({}) }}
