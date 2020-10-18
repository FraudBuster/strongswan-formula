
Changelog
=========

`0.3.0 <https://github.com/saltstack-formulas/strongswan-formula/compare/v0.2.3...v0.3.0>`_ (2020-10-18)
------------------------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** use ``saltimages`` Docker Hub where available [skip ci] (\ `830ff73 <https://github.com/saltstack-formulas/strongswan-formula/commit/830ff733fb8a4e6a58a455f592a2adf9364fcf71>`_\ )
* **kitchen+travis:** use latest pre-salted images [skip ci] (\ `23dc3b2 <https://github.com/saltstack-formulas/strongswan-formula/commit/23dc3b22c2cebbe5686fa13077fb81e2c1d3d8c6>`_\ )
* **pre-commit:** add to formula [skip ci] (\ `dcd0d21 <https://github.com/saltstack-formulas/strongswan-formula/commit/dcd0d214dc7e02c9a1b29a673982a57f40feb4f5>`_\ )
* **pre-commit:** enable/disable ``rstcheck`` as relevant [skip ci] (\ `9469245 <https://github.com/saltstack-formulas/strongswan-formula/commit/946924592a8ebd0ff7af23bd8cc434aae088db41>`_\ )
* **pre-commit:** finalise ``rstcheck`` configuration [skip ci] (\ `d88d911 <https://github.com/saltstack-formulas/strongswan-formula/commit/d88d911e6a3720fb6fae3be9e6646aee68f9f1f0>`_\ )

Features
^^^^^^^^


* **freebsd:** adds freebsd support (\ `0e3e700 <https://github.com/saltstack-formulas/strongswan-formula/commit/0e3e700192171fb28e9d93f91227d16f2c0f21b6>`_\ )

Styles
^^^^^^


* **libtofs.jinja:** use Black-inspired Jinja formatting [skip ci] (\ `ede6df4 <https://github.com/saltstack-formulas/strongswan-formula/commit/ede6df4c96816d92208c5cadee586cbfafd114d5>`_\ )

`0.2.3 <https://github.com/saltstack-formulas/strongswan-formula/compare/v0.2.2...v0.2.3>`_ (2020-05-28)
------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* service name on Ubuntu 20.04 (\ `c0eb7c5 <https://github.com/saltstack-formulas/strongswan-formula/commit/c0eb7c5b09b15fc9d75ba19d9dea1ef29a46cf1c>`_\ )
* **libtofs:** “files_switch” mess up the variable exported by “map.jinja” [skip ci] (\ `28d80f5 <https://github.com/saltstack-formulas/strongswan-formula/commit/28d80f5da9a31308aae82b22cd655c0eb157b84b>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **gemfile:** restrict ``train`` gem version until upstream fix [skip ci] (\ `986b27e <https://github.com/saltstack-formulas/strongswan-formula/commit/986b27e0c7133498d250133ecafbb38307a943a9>`_\ )
* **gemfile.lock:** add to repo with updated ``Gemfile`` [skip ci] (\ `9b6b829 <https://github.com/saltstack-formulas/strongswan-formula/commit/9b6b829dc475549c7491f6757b64942563339895>`_\ )
* **inspec:** update ubuntu 2004 service tests (\ `01b816f <https://github.com/saltstack-formulas/strongswan-formula/commit/01b816f54525a6635b2708fc85de4a78856ef829>`_\ )
* **kitchen:** avoid using bootstrap for ``master`` instances [skip ci] (\ `611d10c <https://github.com/saltstack-formulas/strongswan-formula/commit/611d10c1cb44cf4df16f0b4e2865696d804809c8>`_\ )
* **kitchen+travis:** remove ``master-py2-arch-base-latest`` [skip ci] (\ `c6b97ee <https://github.com/saltstack-formulas/strongswan-formula/commit/c6b97ee75a10ea84f6409b231526bc7552429e4f>`_\ )
* **travis:** add notifications => zulip [skip ci] (\ `c864c31 <https://github.com/saltstack-formulas/strongswan-formula/commit/c864c316231c73f17e5a4e6b4162319adde3eda0>`_\ )
* **travis:** opt-in to ``dpl v2`` to complete build config validation [skip ci] (\ `0bf76ba <https://github.com/saltstack-formulas/strongswan-formula/commit/0bf76bad8f239ade9c81cef1f32050b983af7cb9>`_\ )
* **travis:** quote pathspecs used with ``git ls-files`` [skip ci] (\ `5bd16b4 <https://github.com/saltstack-formulas/strongswan-formula/commit/5bd16b40107ccb4e1f216318ca4700500a608a7e>`_\ )
* **travis:** run ``shellcheck`` during lint job [skip ci] (\ `e5efa45 <https://github.com/saltstack-formulas/strongswan-formula/commit/e5efa45082b1e36d20063cade376ea9c152d8dc8>`_\ )
* **travis:** use ``major.minor`` for ``semantic-release`` version [skip ci] (\ `2a1d244 <https://github.com/saltstack-formulas/strongswan-formula/commit/2a1d244ca8c25720be44fa635451c43cad95b81f>`_\ )
* **workflows/commitlint:** add to repo [skip ci] (\ `271aa46 <https://github.com/saltstack-formulas/strongswan-formula/commit/271aa46ba003b8bb5b398e461e9ca270ba5f72f1>`_\ )

`0.2.2 <https://github.com/saltstack-formulas/strongswan-formula/compare/v0.2.1...v0.2.2>`_ (2019-11-17)
------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **release.config.js:** use full commit hash in commit link [skip ci] (\ `9898d89 <https://github.com/saltstack-formulas/strongswan-formula/commit/9898d899dc450381baa46929bb9745b997ecd359>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** use ``debian-10-master-py3`` instead of ``develop`` [skip ci] (\ `1c7fa65 <https://github.com/saltstack-formulas/strongswan-formula/commit/1c7fa65d4a9a88544f93b97f0137a6dd67d33980>`_\ )
* **kitchen:** use ``develop`` image until ``master`` is ready (\ ``amazonlinux``\ ) [skip ci] (\ `5d5bf55 <https://github.com/saltstack-formulas/strongswan-formula/commit/5d5bf55d63d8a99dbe0afb7ca75ef170a39ee015>`_\ )
* **kitchen+travis:** upgrade matrix after ``2019.2.2`` release [skip ci] (\ `9e45512 <https://github.com/saltstack-formulas/strongswan-formula/commit/9e45512264b779bcab1024bb4023f102538c6fd0>`_\ )
* **travis:** apply changes from build config validation [skip ci] (\ `70ec5ad <https://github.com/saltstack-formulas/strongswan-formula/commit/70ec5ad20c0316988cf30493e69582c5557762be>`_\ )
* **travis:** update ``salt-lint`` config for ``v0.0.10`` [skip ci] (\ `5eb870c <https://github.com/saltstack-formulas/strongswan-formula/commit/5eb870c3cf6503a708e3bde6dfe0ef12a18dd40a>`_\ )
* **travis:** use build config validation (beta) [skip ci] (\ `92191b2 <https://github.com/saltstack-formulas/strongswan-formula/commit/92191b26449890c46439512101a962acca336bb0>`_\ )

Documentation
^^^^^^^^^^^^^


* **readme:** minor fix (indented bullets) (\ `ae7e9dc <https://github.com/saltstack-formulas/strongswan-formula/commit/ae7e9dceedd2d23523aa39ceee2ebbbf11bbc84d>`_\ )

Performance Improvements
^^^^^^^^^^^^^^^^^^^^^^^^


* **travis:** improve ``salt-lint`` invocation [skip ci] (\ `08a42af <https://github.com/saltstack-formulas/strongswan-formula/commit/08a42af1428a2c4e4b11250b308846d5392d95b1>`_\ )

`0.2.1 <https://github.com/saltstack-formulas/strongswan-formula/compare/v0.2.0...v0.2.1>`_ (2019-10-15)
------------------------------------------------------------------------------------------------------------

Code Refactoring
^^^^^^^^^^^^^^^^


* **tofs:** upgrade for all file.managed (\ ` <https://github.com/saltstack-formulas/strongswan-formula/commit/522aa77>`_\ )

`0.2.0 <https://github.com/saltstack-formulas/strongswan-formula/compare/v0.1.0...v0.2.0>`_ (2019-10-15)
------------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **rubocop:** add fixes using ``rubocop --safe-auto-correct`` (\ ` <https://github.com/saltstack-formulas/strongswan-formula/commit/46ef5fa>`_\ )
* **rubocop:** fix remaining errors manually (\ ` <https://github.com/saltstack-formulas/strongswan-formula/commit/84a9ff0>`_\ )
* **tojson:** use ``|json`` to support older minions for the time being (\ ` <https://github.com/saltstack-formulas/strongswan-formula/commit/4bf828e>`_\ )
* **yamllint:** apply rules throughout (\ ` <https://github.com/saltstack-formulas/strongswan-formula/commit/b18c008>`_\ )

Documentation
^^^^^^^^^^^^^


* **formula:** move to ``docs/`` directory (\ ` <https://github.com/saltstack-formulas/strongswan-formula/commit/641d73c>`_\ )
* **readme:** update to standard structure (\ ` <https://github.com/saltstack-formulas/strongswan-formula/commit/038660c>`_\ )

Features
^^^^^^^^


* **install:** provide EPEL repo configuration for ``Amazon Linux-2`` (\ ` <https://github.com/saltstack-formulas/strongswan-formula/commit/be7b55e>`_\ )
* **semantic-release:** implement for this formula (\ ` <https://github.com/saltstack-formulas/strongswan-formula/commit/63428a6>`_\ )
