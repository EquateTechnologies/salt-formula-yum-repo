
{% set major_version = salt['pillar.get']('elastic_co:beats:major_version', 6) %}

beats-repo:
  pkgrepo.managed:
    - name: beats
    - humanname: 'elastic.co Beats {{ major_version }}'
    - gpgkey: http://artifacts.elastic.co/GPG-KEY-elasticsearch
    - gpgcheck: '1'
    - baseurl: 'https://artifacts.elastic.co/packages/{{ major_version }}.x/yum'
    - enabled: {{ salt['pillar.get']('elasticsearch:pkgrepo:enabled', False) }}
