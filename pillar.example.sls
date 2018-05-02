pkgrepo:
  epel:
    # URL to the EPEL RPM to install
    rpm: default varies with OS; see epel/init.sls

    # URL to the EPEL GPG key
    pubkey: default varies with OS; see epel/init.sls
    pubkey_hash: default varies with OS; see epel/init.sls

    # Disable repo so requires the --enablerepo flag to use
    disabled: false

    # Disable (default)/enable EPEL testing
    testing: false

    # Override the default EPEL release version
    release: 7-8
  ius:
    # URL to the ius RPM to install
    rpm: default varies with OS; see ius/init.sls

    # URL to the ius GPG key
    pubkey: default varies with OS; see ius/init.sls
    pubkey_hash: default varies with OS; see ius/init.sls

    # Disable repo so requires the --enablerepo flag to use
    disabled: True
    testing: False
    archive: False
    dev: False
    options:
      includepkgs: 'ius-release mod_php7* php7*'
  brave:
    enabled: True
    pubkey: default varies with OS; see ius/init.sls
    pubkey_hash: default varies with OS; see ius/init.sls
    options:
      includepkgs: brave*
  cb:
    opensource:
      enabled: True
      options:
        includepkgs: cb-*
  duosecurity:
    enabled: True
    pubkey: default varies with OS; see ius/init.sls
    pubkey_hash: default varies with OS; see ius/init.sls
  elastic_co:
    enabled: True
    major_version: 6
    pubkey: default varies with OS; see ius/init.sls
    pubkey_hash: default varies with OS; see ius/init.sls
  google_chrome:
    enabled: True
    pubkey: default varies with OS; see ius/init.sls
    pubkey_hash: default varies with OS; see ius/init.sls
  graylog:
    rpm: default varies with OS; see epel/init.sls
    enabled: True
    release_version: 2.4
    pubkey: default varies with OS; see ius/init.sls
    pubkey_hash: default varies with OS; see ius/init.sls
  mongodb:
    enabled: True
    release_version: 3.4
    pubkey: default varies with OS; see ius/init.sls
    pubkey_hash: default varies with OS; see ius/init.sls
  bidehs:
    rpm: default varies with OS; see epel/init.sls
    enabled: True
    version: 9
    pubkey: default varies with OS; see ius/init.sls
    pubkey_hash: default varies with OS; see ius/init.sls
  atomicorp:
    enabled: True
    pubkey: default varies with OS; see ius/init.sls
    pubkey_hash: default varies with OS; see ius/init.sls
  nginx:
    enabled: True
    pubkey: default varies with OS; see ius/init.sls
    pubkey_hash: default varies with OS; see ius/init.sls
  salt:
    enabled: True
    version: 2018.3
    pubkey: default varies with OS; see ius/init.sls
    pubkey_hash: default varies with OS; see ius/init.sls
