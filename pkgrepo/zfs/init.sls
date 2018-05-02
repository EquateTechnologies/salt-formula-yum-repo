{% from "pkgrepo/map.jinja" import pkgrepo_settings with context %}

{% if 'zfs' in pkgrepo_settings and 'enabled' in pkgrepo_settings.zfs and pkgrepo_settings.zfs.enabled == True %}
{% if 'rpm' in pkgrepo_settings.zfs and pkgrepo_settings.zfs.rpm != '' %}
zfs_release:
  pkg.installed:
    - sources:
      - zfs-release: {{ pkgrepo_settings.zfs.rpm }}
{% endif %}
{% endif %}
