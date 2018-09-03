{% from "pkgrepo/map.jinja" import pkgrepo_settings with context %}

{% set mariadb_version = pkgrepo_settings.mariadb.release_version|default('10.3') %}

{% set distro_arch = "x86" %}
{% if grains.cpuarch == "x86_64" %}
{% set distro_arch = "amd64" %}
{% endif %}

{% set distro_name = grains.os.lower() %}
{% if distro_name == "redhat" %}
{% set distro_name = "rhel" %}
{% endif %}

{% set distro_path = distro_name + grains.osmajorrelease + "-" + distro_arch %}

pkgrepo-mariadb:
  file.managed:
    - name: /etc/yum.repos.d/pkgrepo-mariadb.repo
    - source: salt://pkgrepo/mariadb/template.repo
    - template: jinja
    - user: root
    - group: root
    - mode: 0644
    - context:
      mariadb_version: {{ mariadb_version }}
      distro_path: {{ distro_path }}
      repo_enabled: {{ pkgrepo_settings.mariadb.enabled|default(False) }}
      repo_options: {{ pkgrepo_settings.mariadb.options|default({}) }}
