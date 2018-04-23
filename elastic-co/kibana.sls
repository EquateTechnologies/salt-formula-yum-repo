
{% set major_version = salt['pillar.get']('elasticsearch:kibana:major_version', 6) %}

kibana-repo:
  pkgrepo.managed:
    - name: kibana
    - humanname: 'elastic.co Kibana {{ major_version }}'
    - gpgkey: http://artifacts.elastic.co/GPG-KEY-elasticsearch
    - gpgcheck: '1'
    - baseurl: 'https://artifacts.elastic.co/packages/{{ major_version }}.x/yum'
    - enabled: {{ salt['pillar.get']('elasticsearch:kibana:enabled', False) }}
