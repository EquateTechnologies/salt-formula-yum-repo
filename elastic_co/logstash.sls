
{% set major_version = salt['pillar.get']('elastic_co:logstash:major_version', 6) %}

logstash-repo:
  pkgrepo.managed:
    - name: logstash
    - humanname: 'elastic.co Logstash {{ major_version }}'
    - gpgkey: http://artifacts.elastic.co/GPG-KEY-elasticsearch
    - gpgcheck: '1'
    - baseurl: 'https://artifacts.elastic.co/packages/{{ major_version }}.x/yum'
    - enabled: {{ salt['pillar.get']('elasticsearch:logstash:enabled', False) }}
