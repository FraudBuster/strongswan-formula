# Changelog

## [0.2.2](https://github.com/saltstack-formulas/strongswan-formula/compare/v0.2.1...v0.2.2) (2019-11-17)


### Bug Fixes

* **release.config.js:** use full commit hash in commit link [skip ci] ([9898d89](https://github.com/saltstack-formulas/strongswan-formula/commit/9898d899dc450381baa46929bb9745b997ecd359))


### Continuous Integration

* **kitchen:** use `debian-10-master-py3` instead of `develop` [skip ci] ([1c7fa65](https://github.com/saltstack-formulas/strongswan-formula/commit/1c7fa65d4a9a88544f93b97f0137a6dd67d33980))
* **kitchen:** use `develop` image until `master` is ready (`amazonlinux`) [skip ci] ([5d5bf55](https://github.com/saltstack-formulas/strongswan-formula/commit/5d5bf55d63d8a99dbe0afb7ca75ef170a39ee015))
* **kitchen+travis:** upgrade matrix after `2019.2.2` release [skip ci] ([9e45512](https://github.com/saltstack-formulas/strongswan-formula/commit/9e45512264b779bcab1024bb4023f102538c6fd0))
* **travis:** apply changes from build config validation [skip ci] ([70ec5ad](https://github.com/saltstack-formulas/strongswan-formula/commit/70ec5ad20c0316988cf30493e69582c5557762be))
* **travis:** update `salt-lint` config for `v0.0.10` [skip ci] ([5eb870c](https://github.com/saltstack-formulas/strongswan-formula/commit/5eb870c3cf6503a708e3bde6dfe0ef12a18dd40a))
* **travis:** use build config validation (beta) [skip ci] ([92191b2](https://github.com/saltstack-formulas/strongswan-formula/commit/92191b26449890c46439512101a962acca336bb0))


### Documentation

* **readme:** minor fix (indented bullets) ([ae7e9dc](https://github.com/saltstack-formulas/strongswan-formula/commit/ae7e9dceedd2d23523aa39ceee2ebbbf11bbc84d))


### Performance Improvements

* **travis:** improve `salt-lint` invocation [skip ci] ([08a42af](https://github.com/saltstack-formulas/strongswan-formula/commit/08a42af1428a2c4e4b11250b308846d5392d95b1))

## [0.2.1](https://github.com/saltstack-formulas/strongswan-formula/compare/v0.2.0...v0.2.1) (2019-10-15)


### Code Refactoring

* **tofs:** upgrade for all file.managed ([](https://github.com/saltstack-formulas/strongswan-formula/commit/522aa77))

# [0.2.0](https://github.com/saltstack-formulas/strongswan-formula/compare/v0.1.0...v0.2.0) (2019-10-15)


### Bug Fixes

* **rubocop:** add fixes using `rubocop --safe-auto-correct` ([](https://github.com/saltstack-formulas/strongswan-formula/commit/46ef5fa))
* **rubocop:** fix remaining errors manually ([](https://github.com/saltstack-formulas/strongswan-formula/commit/84a9ff0))
* **tojson:** use `|json` to support older minions for the time being ([](https://github.com/saltstack-formulas/strongswan-formula/commit/4bf828e))
* **yamllint:** apply rules throughout ([](https://github.com/saltstack-formulas/strongswan-formula/commit/b18c008))


### Documentation

* **formula:** move to `docs/` directory ([](https://github.com/saltstack-formulas/strongswan-formula/commit/641d73c))
* **readme:** update to standard structure ([](https://github.com/saltstack-formulas/strongswan-formula/commit/038660c))


### Features

* **install:** provide EPEL repo configuration for `Amazon Linux-2` ([](https://github.com/saltstack-formulas/strongswan-formula/commit/be7b55e))
* **semantic-release:** implement for this formula ([](https://github.com/saltstack-formulas/strongswan-formula/commit/63428a6))
