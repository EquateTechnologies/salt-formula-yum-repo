
{% set major_version = salt['pillar.get']('elastic_co:pkgrepo:major_version', 6) %}

elasticsearch-repo:
  pkgrepo.managed:
    - name: elasticsearch
    - humanname: 'elastic.co Elasticsearch {{ major_version }}'
    - gpgkey: http://artifacts.elastic.co/GPG-KEY-elasticsearch
    - gpgcheck: '1'
    - baseurl: 'https://artifacts.elastic.co/packages/{{ major_version }}.x/yum'
    - enabled: {{ salt['pillar.get']('elasticsearch:pkgrepo:enabled', False) }}
