
nginx-repo:
  pkgrepo.managed:
    - name: nginx
    - humanname: 'nginx Repository'
    - gpgkey: 'http://nginx.org/keys/nginx_signing.key'
    - gpgcheck: '1'
    - baseurl: 'http://nginx.org/packages/centos/$releasever/$basearch/'
    - enabled: {{ salt['pillar.get']('nginx:pkgrepo:enabled', False) }}
