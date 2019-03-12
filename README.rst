================
strongswan-formula
================

A SaltStack formula to install, configure and manage `Strongswan <https://www.strongswan.org/>`_.

.. contents:: **Table of Contents**

General notes
=============

See the full `SaltStack Formulas installation and usage instructions
<https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

If you are interested in writing or contributing to formulas, please pay attention to the `Writing Formula Section
<https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html#writing-formulas>`_.

If you want to use this formula, please pay attention to the ``FORMULA`` file and/or ``git tag``,
which contains the currently released version. This formula is versioned according to `Semantic Versioning <http://semver.org/>`_.

See `Formula Versioning Section <https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html#versioning>`_ for more details.


Contributing to this repo
=========================

**Commit message formatting is significant!!**

Please see `CONTRIBUTING <CONTRIBUTING.md>`_ for more details.


Available states
================

.. contents::
    :local:

``strongswan``
------------

Meta-state (This is a state that includes other states)

This installs the strongswan package, configures and starts the associated strongswan service.

``strongswan.install``
--------------------

This state will install the strongswan package only.

``strongswan.config``
-------------------

This state will configure the strongswan service and has a dependency on ``strongswan.install``
via include list.

Configuration is splitted:
  * for connections:
    * in a main file for default options and `%default` connection. This file include files from 'dropin' directory
    * in a 'dropin' directory where each connection has its own config file
  * for secrets:
    * in a main file which include files from 'dropin' directory
    * in a 'dropin' directory where each connection has its own secret file

``strongswan.service``
-------------------

This state manage the strongswan service.

