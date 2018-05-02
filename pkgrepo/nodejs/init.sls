{% from "pkgrepo/map.jinja" import pkgrepo_settings with context %}

{% if 'rpm' in pkgrepo_settings.nodejs and pkgrepo_settings.nodejs.rpm != '' %}
nodejs_release:
  pkg.installed:
    - sources:
      - nodesource-release: {{ pkgrepo_settings.nodejs.rpm }}
{% else %}

{% set node_version = pkgrepo_settings.nodejs.major_version|default('9') %}
{% set enable_source_repo = pkgrepo_settings.nodejs.enable_source_repo|default(False) %}

nodesource-rpm-gpg-key:
  file.managed:
    - name: /etc/pki/rpm-gpg/NODESOURCE-GPG-SIGNING-KEY-EL
    - source: https://rpm.nodesource.com/pub/el/NODESOURCE-GPG-SIGNING-KEY-EL
    - source_hash: md5=c4f28a5a03fee0f8f6681fd8f522982c

pkgrepo-nodejs:
  file.managed:
    - name: /etc/yum.repos.d/pkgrepo-nodejs.repo
    - source: salt://pkgrepo/nodejs/template.repo
    - template: jinja
    - user: root
    - group: root
    - mode: 0644
    - context:
      node_version: {{ node_version }}
      enable_source_repo: {{ enable_source_repo }}
      repo_enabled: {{ pkgrepo_settings.nodejs.enabled|default(False) }}
      repo_options: {{ pkgrepo_settings.nodejs.options|default({}) }}
{% endif %}
