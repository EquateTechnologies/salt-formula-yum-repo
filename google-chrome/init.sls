
gopgle-chrome-repo:
  pkgrepo.managed:
    - name: gopgle-chrome
    - humanname: 'Google Chrome'
    - gpgkey: 'https://dl-ssl.google.com/linux/linux_signing_key.pub'
    - gpgcheck: '1'
    - baseurl: 'http://dl.google.com/linux/chrome/rpm/stable/$basearch'
    - enabled: {{ salt['pillar.get']('google-chrome:pkgrepo:enabled', False) }}
