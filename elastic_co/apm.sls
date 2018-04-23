
{% set major_version = salt['pillar.get']('elastic_co:apm:major_version', 6) %}

apm-repo:
  pkgrepo.managed:
    - name: apm
    - humanname: 'elastic.co APM {{ major_version }}'
    - gpgkey: http://artifacts.elastic.co/GPG-KEY-elasticsearch
    - gpgcheck: '1'
    - baseurl: 'https://artifacts.elastic.co/packages/{{ major_version }}.x/yum'
    - enabled: {{ salt['pillar.get']('elasticsearch:pkgrepo:enabled', False) }}
