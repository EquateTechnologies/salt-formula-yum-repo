salt-rpm-gpg-key:
  file.absent:
    - name: /etc/pki/rpm-gpg/SALTSTACK-GPG-KEY.pub

pkgrepo-salt:
  file.absent:
    - name: /etc/yum.repos.d/pkgrepo-salt.repo
