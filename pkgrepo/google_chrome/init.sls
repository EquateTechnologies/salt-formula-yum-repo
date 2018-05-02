{% from "pkgrepo/map.jinja" import pkgrepo_settings with context %}

pkgrepo-google_chrome:
  file.managed:
    - name: /etc/yum.repos.d/pkgrepo-google_chrome.repo
    - source: salt://pkgrepo/google_chrome/template.repo
    - template: jinja
    - user: root
    - group: root
    - mode: 0644
    - context:
      repo_enabled: {{ pkgrepo_settings.google_chrome.enabled|default(False) }}
      repo_options: {{ pkgrepo_settings.google_chrome.options|default({}) }}
