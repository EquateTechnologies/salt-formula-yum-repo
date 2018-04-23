nodesource-rpm-gpg-key:
  file.managed:
    - name: /etc/pki/rpm-gpg/NODESOURCE-GPG-SIGNING-KEY-EL
    - source: https://rpm.nodesource.com/pub/el/NODESOURCE-GPG-SIGNING-KEY-EL
    - source_hash: md5=c4f28a5a03fee0f8f6681fd8f522982c

{% set node_version = salt['pillar.get']('nodesource:pkgrepo:version', '9') %}

nodesource-repo:
  pkgrepo.managed:
    - name: nodesource
    - humanname: 'Node.js Packages for Enterprise Linux $releasever - $basearch'
    - gpgkey: 'file:///etc/pki/rpm-gpg/NODESOURCE-GPG-SIGNING-KEY-EL'
    - gpgcheck: '1'
    - baseurl: 'https://rpm.nodesource.com/pub_{{ node_version }}.x/el/$releasever/$basearch'
    - enabled: {{ salt['pillar.get']('nodesource:pkgrepo:enabled', False) }}
    - require:
      - file: nodesource-rpm-gpg-key

{% if salt['pillar.get']('nodesource:pkgrepo:enable_source', False) == True %}
nodesource-source-repo:
  pkgrepo.managed:
    - name: nodesource-source
    - humanname: 'Node.js Packages for Enterprise Linux $releasever - $basearch - Source'
    - gpgkey: 'file:///etc/pki/rpm-gpg/NODESOURCE-GPG-SIGNING-KEY-EL'
    - gpgcheck: '1'
    - baseurl: 'https://rpm.nodesource.com/pub_{{ node_version }}.x/el/$releasever/SRPMS'
    - enabled: '1'
    - require:
      - file: nodesource-rpm-gpg-key
{% endif %}
