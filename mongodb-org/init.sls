
{% set mongodb_version = salt['pillar.get']('mongodb-org:pkgrepo:version', '3.4') %}

mongodb-org-repo:
  pkgrepo.managed:
    - name: mongodb
    - humanname: 'MongoDB Repository'
    - gpgkey: 'https://www.mongodb.org/static/pgp/server-{{ mongodb_version }}.asc'
    - gpgcheck: '1'
    - baseurl: 'https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/{{ mongodb_version }}/$basearch/'
    - enabled: {{ salt['pillar.get']('mongodb-org:pkgrepo:enabled', False) }}
