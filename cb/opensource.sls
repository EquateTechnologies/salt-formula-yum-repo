
cb-opensource-repo:
  pkgrepo.managed:
    - name: CbOpenSource
    - humanname: 'Carbon Black Open Source RPM Repository'
    - gpgcheck: '0'
    - sslverify: '1'
    - metadata_expire: '60'
    - baseurl: 'https://opensource.carbonblack.com/release/$basearch'
    - enabled: {{ salt['pillar.get']('cb-opensource:pkgrepo:enabled', False) }}
