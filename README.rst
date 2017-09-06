epel
====

Install the EPEL RPM and GPG key on RHEL 5/6/7, CentOS 5/6/7, Amazon Linux, or
Oracle Linux 5/6/7.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``epel``
--------

Installs the GPG key and EPEL RPM package for the current OS.

The EPEL testing repository can be enabled by setting the Pillar ``epel:testing: true``.

The EPEL release to be installed can be defind by setting the Pillar ``epel:release: 7-8``
==============
ius-formula
==============

Install the IUS RPM Repo and GPG Key on CentOS 6/7 (not tested in RHEL).

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``ius``
----------

Installs the GPG key and the IUS RPM package for the current OS.

The IUS testing repository can be enabled by setting the Pillar ``ius:testing: True``.

The IUS dev repository can be enabled by setting the Pillar ``ius:dev: True``.

The IUS archive repository can be enabled by setting the Pillar ``ius:archive: True``.
