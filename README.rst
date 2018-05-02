pkgrepo
=======

Configure various RPM repositories for EL compatible systems.

NOTE: This is a fork from yum-repo formula originally.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``pkgrepo.atomicorp``
--------

Configures the atomicorp repo.

Repository will be marked enabled only by setting the Pillar ``pkgrepo:atomicorp:enabled: True``.

``pkgrepo.atomicorp.remove``
--------

Removes the atomicorp repo.

``pkgrepo.brave``
--------

Configures yum repo for Brave browser.

Repository will be marked enabled only by setting the Pillar ``pkgrepo:brave:enabled: True``.

``pkgrepo.brave.remove``
--------

Removes yum repo for Brave browser.

``pkgrepo.cb.opensource``
--------

Configures yum repo for Carbon Black Open Source packages.

Repository will be marked enabled only by setting the Pillar ``pkgrepo:cb:opensource:enabled: True``.

``pkgrepo.cb.opensource.remove``
--------

Removes yum repo for Carbon Black Open Source packages.

``pkgrepo.duosecurity``
--------

Configures yum repo for Duo Security packages.

Repository will be marked enabled only by setting the Pillar ``pkgrepo:duosecurity:enabled: True``.

``pkgrepo.duosecurity.remove``
--------

Removes yum repo for Duo Security packages.

``pkgrepo.elastic_co``
--------

Configures yum repo for elastic.co's repository, which includes ElasticSearch/Kibana/Beats/LogStash/APM/etc.

Repository will be marked enabled only by setting the Pillar ``pkgrepo:elastic_co:elasticsearch:enabled: True``.

elastic.co release version can be influenced using pillar configuration. Refer to pillar.example.sls

NOTE: Elasticsearch/Kibana/Beats/Logstash/APM all come from the same repo; but they're configure independently to permit different versions to be used (results may vary)

``pkgrepo.elastic_co.remove``
--------

Removes yum repo for elastic.co's repository

``pkgrepo.epel``
--------

Installs the GPG key and EPEL RPM package for the current OS.

The EPEL testing repository can be enabled by setting the Pillar ``pkgrepo:epel:testing: true``.

The EPEL release to be installed can be defind by setting the Pillar ``pkgrepo:epel:release: 7-8``

``pkgrepo.epel.remove``
--------

Removes the GPG key and EPEL RPM package for the current OS.

``pkgrepo.google_chrome``
--------

Configures yum repo for Google Chrome.

Repository will be marked enabled only by setting the Pillar ``pkgrepo:google_chrome:enabled: True``.

``pkgrepo.google_chrome.remove``
--------

Removes yum repo for Google Chrome.

``pkgrepo.graylog``
--------

Configures yum repo for Graylog.

Repository will be marked enabled only by setting the Pillar ``pkgrepo:graylog:enabled: True``.

Graylog release version can be controlled using pillar configuration. Refer to pillar.example.sls

``pkgrepo.graylog.remove``
--------

Removes yum repo for Graylog.

``pkgrepo.ius``
----------

Installs the GPG key and the IUS RPM package for the current OS.

The IUS testing repository can be enabled by setting the Pillar ``pkgrepo:ius:testing: True``.

The IUS dev repository can be enabled by setting the Pillar ``pkgrepo:ius:dev: True``.

The IUS archive repository can be enabled by setting the Pillar ``pkgrepo:ius:archive: True``.

``pkgrepo.ius.remove``
----------

Removes the GPG key and the IUS RPM package for the current OS.

``pkgrepo.mongodb``
--------

Configures yum repo for official MongoDB packages from mongodb.org.

Repository will be marked enabled only by setting the Pillar ``pkgrepo:mongodb:enabled: True``.

mongodb release version can be controlled using pillar configuration. Refer to pillar.example.sls

``pkgrepo.mongodb.remove``
--------

Removes yum repo for official MongoDB packages from mongodb.org.

``pkgrepo.nginx``
--------

Configures yum repo for official  nginx packages.

Repository will be marked enabled only by setting the Pillar ``pkgrepo:nginx:enabled: True``.

``pkgrepo.nginx.remove``
--------

Removes yum repo for official  nginx packages.

``pkgrepo.nodejs``
--------

Configures yum repo for node.js from nodesource.

Repository will be marked enabled only by setting the Pillar ``pkgrepo:nodesource:enabled: True``.

node.js release version can be influenced using pillar configuration. Refer to pillar.example.sls

``pkgrepo.nodejs.remove``
--------

Removes yum repo for node.js from nodesource.

``pkgrepo.salt``
--------

Configures yum repo for Salt Stack.

Repository will be marked enabled only by setting the Pillar ``pkgrepo:salt:enabled: True``.

salt release version can be influenced using pillar configuration. Refer to pillar.example.sls

``pkgrepo.salt.remove``
--------

Removes yum repo for Salt Stack.
