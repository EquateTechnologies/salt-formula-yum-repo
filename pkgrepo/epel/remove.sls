remove_pubkey_epel:
  file.absent:
    - name: /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL

epel_release:
  pkg.removed:
    - name: epel-release
    - require:
      - file: remove_pubkey_epel

remove_epel_repo_file:
  file.absent:
    - name: /etc/yum.repos.d/epel.repo
    - require:
      - pkg: epel_release

remove_epel_testing_repo_file:
  file.absent:
    - name: /etc/yum.repos.d/epel-testing.repo
    - require:
      - pkg: epel_release
