ius_pubkey:
  file.absent:
    - name: /etc/pki/rpm-gpg/IUS-COMMUNITY-GPG-KEY

ius_rpm:
  pkg.removed:
    - name: ius-release
    - require:
      - file: ius_pubkey

remove_ius_repo_file:
  file.absent:
    - name: /etc/yum.repos.d/ius.repo
    - require:
      - pkg: ius_rpm

ius.remove_ius_testing_repo_file:
  file.absent:
    - name: /etc/yum.repos.d/ius-testing.repo
    - require:
      - pkg: ius_rpm

ius.remove_ius_dev_repo_file:
  file.absent:
    - name: /etc/yum.repos.d/ius-dev.repo
    - require:
      - pkg: ius_rpm

ius.remove_ius_archive_repo_file:
  file.absent:
    - name: /etc/yum.repos.d/ius-archive.repo
    - require:
      - pkg: ius_rpm
