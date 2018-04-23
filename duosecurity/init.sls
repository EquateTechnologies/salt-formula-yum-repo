duosecurity-repo:
  pkgrepo.managed:
    - name: duosecurity
    - humanname: 'Duo Security'
    - gpgkey: 'https://www.duosecurity.com/RPM-GPG-KEY-DUO'
    - gpgcheck: '1'
    - baseurl: 'http://pkg.duosecurity.com/CentOS/$releasever/$basearch'
    - enabled: {{ salt['pillar.get']('duosecurity:pkgrepo:enabled', False) }}
