
brave-repo:
  pkgrepo.managed:
    - name: brave
    - humanname: 'Brave Browser'
    - gpgkey: 'https://s3-us-west-2.amazonaws.com/brave-rpm-release/keys.asc'
    - gpgcheck: '1'
    - baseurl: 'https://s3-us-west-2.amazonaws.com/brave-rpm-release/$basearch/'
    - enabled: {{ salt['pillar.get']('brave:pkgrepo:enabled', False) }}
