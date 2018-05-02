{% from "pkgrepo/map.jinja" import pkgrepo_settings with context %}

pkgrepo-nginx:
  file.managed:
    - name: /etc/yum.repos.d/pkgrepo-nginx.repo
    - source: salt://pkgrepo/nginx/template.repo
    - template: jinja
    - user: root
    - group: root
    - mode: 0644
    - context:
      repo_enabled: {{ pkgrepo_settings.nginx.enabled|default(False) }}
      repo_options: {{ pkgrepo_settings.nginx.options|default({}) }}
