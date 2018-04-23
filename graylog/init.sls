
graylog-rpm-gpg-key:
  file.managed:
    - name: /etc/pki/rpm-gpg/RPM-GPG-KEY-graylog
    - source: https://raw.githubusercontent.com/Graylog2/fpm-recipes/master/recipes/graylog-collector-repository/files/rpm/RPM-GPG-KEY-graylog-collector
    - source_hash: md5=b9a593c0d80ccd4098f0b4c8cafc3312

{% set graylog_version = salt['pillar.get']('graylog:pkgrepo:version', '2.4') %}

graylog-repo:
  pkgrepo.managed:
    - name: graylog
    - humanname: 'Graylog'
    - gpgkey: 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-graylog'
    - gpgcheck: '1'
    - baseurl: 'https://packages.graylog2.org/repo/el/stable/{{ graylog_version }}/$basearch/'
    - enabled: {{ salt['pillar.get']('graylog:pkgrepo:enabled', False) }}
    - require:
      - file: graylog-rpm-gpg-key
