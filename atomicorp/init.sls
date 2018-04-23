
atomicorp-repo:
  pkgrepo.managed:
    - name: atomicorp
    - humanname: 'atomicorp Repository'
    - gpgkey: 'https://www.atomicorp.com/RPM-GPG-KEY.art.txt https://www.atomicorp.com/RPM-GPG-KEY.atomicorp.txt'
    - gpgcheck: '1'
    - mirrorlist: 'http://updates.atomicorp.com/channels/mirrorlist/atomic/centos-$releasever-$basearch'
    - enabled: {{ salt['pillar.get']('atomicorp:pkgrepo:enabled', False) }}
