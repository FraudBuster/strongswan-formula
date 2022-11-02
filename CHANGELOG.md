# Changelog

# [0.5.0](https://github.com/saltstack-formulas/strongswan-formula/compare/v0.4.0...v0.5.0) (2022-11-02)


### Code Refactoring

* change all state IDs ([e26350a](https://github.com/saltstack-formulas/strongswan-formula/commit/e26350a33d62adfe8d22c5f9af2b33356741b885))


### Documentation

* **readme:** fix rst syntax ([50205e7](https://github.com/saltstack-formulas/strongswan-formula/commit/50205e70e027b8b3ce9011fcb56e65f3978794bd))


### Features

* new optional state to add AppArmor rules, refs [#6](https://github.com/saltstack-formulas/strongswan-formula/issues/6) ([4777622](https://github.com/saltstack-formulas/strongswan-formula/commit/4777622c0f9daae29dd7ce5dc5535f3f6eb6fb72))

# [0.4.0](https://github.com/saltstack-formulas/strongswan-formula/compare/v0.3.0...v0.4.0) (2022-06-17)


### Bug Fixes

* **xenial:** use `reload: false` for service ([2b436b8](https://github.com/saltstack-formulas/strongswan-formula/commit/2b436b8f27c44ceb251d56ab4cf62abdec079dcb))


### Continuous Integration

* update `pre-commit` configuration inc. for pre-commit.ci [skip ci] ([9de29ba](https://github.com/saltstack-formulas/strongswan-formula/commit/9de29ba9603a69d52392e6f6b685a3bd0d9aae2a))
* **kitchen+gitlab:** update for new pre-salted images [skip ci] ([9afc4e1](https://github.com/saltstack-formulas/strongswan-formula/commit/9afc4e1d2608bc4592e4acdc209ea1e87c7e9bf8))
* update linters to latest versions [skip ci] ([25e555d](https://github.com/saltstack-formulas/strongswan-formula/commit/25e555d2ca86177277644ba87b321abbca826a7c))
* **3003.1:** update inc. AlmaLinux, Rocky & `rst-lint` [skip ci] ([9a54d8f](https://github.com/saltstack-formulas/strongswan-formula/commit/9a54d8f03042d07d9f81b018047a6cc35ef0af8d))
* **commitlint:** ensure `upstream/master` uses main repo URL [skip ci] ([a82567a](https://github.com/saltstack-formulas/strongswan-formula/commit/a82567a088cd9c3a61f0ac8348ffa525761836e2))
* **gemfile:** allow rubygems proxy to be provided as an env var [skip ci] ([ebcd938](https://github.com/saltstack-formulas/strongswan-formula/commit/ebcd938f55d67dec6a2e512171a481d5ae832a9f))
* **gemfile+lock:** use `ssf` customised `inspec` repo [skip ci] ([0df3831](https://github.com/saltstack-formulas/strongswan-formula/commit/0df38317549bf1ced07767af780c915f3e18a7de))
* **gemfile+lock:** use `ssf` customised `kitchen-docker` repo [skip ci] ([e134b58](https://github.com/saltstack-formulas/strongswan-formula/commit/e134b589ad9446bfc396c78e1cde6807a59a2124))
* **gitlab-ci:** add `rubocop` linter (with `allow_failure`) [skip ci] ([8e4d882](https://github.com/saltstack-formulas/strongswan-formula/commit/8e4d8821f209995ff3262245179f3c01e085dbb7))
* **gitlab-ci:** use GitLab CI as Travis CI replacement ([be21d38](https://github.com/saltstack-formulas/strongswan-formula/commit/be21d383e1849bfd7949e53e56adaafb87b70280))
* **kitchen:** move `provisioner` block & update `run_command` [skip ci] ([2c21054](https://github.com/saltstack-formulas/strongswan-formula/commit/2c210549b2e55b20b1c34af55845dcc29d574b44))
* **kitchen+ci:** update with `3004` pre-salted images/boxes [skip ci] ([25ff8cb](https://github.com/saltstack-formulas/strongswan-formula/commit/25ff8cb4b96a25febe17b8684d8588dd58ff1191))
* **kitchen+ci:** update with latest `3003.2` pre-salted images [skip ci] ([ef80f7f](https://github.com/saltstack-formulas/strongswan-formula/commit/ef80f7fcc423099e2f45c00b8853ffa3476d39d6))
* **kitchen+ci:** update with latest CVE pre-salted images [skip ci] ([8b3cf5c](https://github.com/saltstack-formulas/strongswan-formula/commit/8b3cf5c76faf8bc420b2530086c292f604aa67b5))
* **kitchen+gitlab:** update for new pre-salted images [skip ci] ([f0da02a](https://github.com/saltstack-formulas/strongswan-formula/commit/f0da02abbfa52bb0921bb4170a7f774b0988ea52))
* add Debian 11 Bullseye & update `yamllint` configuration [skip ci] ([6090e49](https://github.com/saltstack-formulas/strongswan-formula/commit/6090e499220895d7789ce0b1287840f68261438f))
* **kitchen+gitlab:** remove Ubuntu 16.04 & Fedora 32 (EOL) [skip ci] ([f00cb73](https://github.com/saltstack-formulas/strongswan-formula/commit/f00cb732f8a72e8e3ef72166a7003db8a3276113))
* add `arch-master` to matrix and update `.travis.yml` [skip ci] ([fafb9b8](https://github.com/saltstack-formulas/strongswan-formula/commit/fafb9b8449eba9ad3f4f90bb4b975708bd79ed3f))
* **kitchen+ci:** use latest pre-salted images (after CVE) [skip ci] ([251c868](https://github.com/saltstack-formulas/strongswan-formula/commit/251c86885f30edf6f5d36942efc960cf2698bc13))
* **kitchen+gitlab:** adjust matrix to add `3003` [skip ci] ([7da4210](https://github.com/saltstack-formulas/strongswan-formula/commit/7da42104b85db1430989e0277bc97924ba8c33a3))
* **kitchen+gitlab-ci:** use latest pre-salted images [skip ci] ([b5a8720](https://github.com/saltstack-formulas/strongswan-formula/commit/b5a87202c8a4e1e681950f422507d6fd97468f0e))
* **pre-commit:** update hook for `rubocop` [skip ci] ([645ca9e](https://github.com/saltstack-formulas/strongswan-formula/commit/645ca9e8d9a73be6fee70469b8a53031d6e4005b))


### Features

* **osfingermap:** add support for `debian-11` [skip ci] ([038eade](https://github.com/saltstack-formulas/strongswan-formula/commit/038eade761806a327d35cc299e017e2a6780ed90))
* **osfingermap:** add support for `ubuntu-22.04` [skip ci] ([8423dcd](https://github.com/saltstack-formulas/strongswan-formula/commit/8423dcd66ff911ab5da65a0399e9e4cb121d926c))


### Tests

* **system:** add `build_platform_codename` [skip ci] ([3d0f14d](https://github.com/saltstack-formulas/strongswan-formula/commit/3d0f14d96a84f949505ff3b80b73615eb24d15ef))
* **system.rb:** add support for `mac_os_x` [skip ci] ([783420e](https://github.com/saltstack-formulas/strongswan-formula/commit/783420e5032d71a3183ba505365d047fe8db2a74))
* standardise use of `share` suite & `_mapdata` state [skip ci] ([b192413](https://github.com/saltstack-formulas/strongswan-formula/commit/b192413a75b73b700c8d642e12637950caf5b894))

# [0.3.0](https://github.com/saltstack-formulas/strongswan-formula/compare/v0.2.3...v0.3.0) (2020-10-18)


### Continuous Integration

* **kitchen:** use `saltimages` Docker Hub where available [skip ci] ([830ff73](https://github.com/saltstack-formulas/strongswan-formula/commit/830ff733fb8a4e6a58a455f592a2adf9364fcf71))
* **kitchen+travis:** use latest pre-salted images [skip ci] ([23dc3b2](https://github.com/saltstack-formulas/strongswan-formula/commit/23dc3b22c2cebbe5686fa13077fb81e2c1d3d8c6))
* **pre-commit:** add to formula [skip ci] ([dcd0d21](https://github.com/saltstack-formulas/strongswan-formula/commit/dcd0d214dc7e02c9a1b29a673982a57f40feb4f5))
* **pre-commit:** enable/disable `rstcheck` as relevant [skip ci] ([9469245](https://github.com/saltstack-formulas/strongswan-formula/commit/946924592a8ebd0ff7af23bd8cc434aae088db41))
* **pre-commit:** finalise `rstcheck` configuration [skip ci] ([d88d911](https://github.com/saltstack-formulas/strongswan-formula/commit/d88d911e6a3720fb6fae3be9e6646aee68f9f1f0))


### Features

* **freebsd:** adds freebsd support ([0e3e700](https://github.com/saltstack-formulas/strongswan-formula/commit/0e3e700192171fb28e9d93f91227d16f2c0f21b6))


### Styles

* **libtofs.jinja:** use Black-inspired Jinja formatting [skip ci] ([ede6df4](https://github.com/saltstack-formulas/strongswan-formula/commit/ede6df4c96816d92208c5cadee586cbfafd114d5))

## [0.2.3](https://github.com/saltstack-formulas/strongswan-formula/compare/v0.2.2...v0.2.3) (2020-05-28)


### Bug Fixes

* service name on Ubuntu 20.04 ([c0eb7c5](https://github.com/saltstack-formulas/strongswan-formula/commit/c0eb7c5b09b15fc9d75ba19d9dea1ef29a46cf1c))
* **libtofs:** “files_switch” mess up the variable exported by “map.jinja” [skip ci] ([28d80f5](https://github.com/saltstack-formulas/strongswan-formula/commit/28d80f5da9a31308aae82b22cd655c0eb157b84b))


### Continuous Integration

* **gemfile:** restrict `train` gem version until upstream fix [skip ci] ([986b27e](https://github.com/saltstack-formulas/strongswan-formula/commit/986b27e0c7133498d250133ecafbb38307a943a9))
* **gemfile.lock:** add to repo with updated `Gemfile` [skip ci] ([9b6b829](https://github.com/saltstack-formulas/strongswan-formula/commit/9b6b829dc475549c7491f6757b64942563339895))
* **inspec:** update ubuntu 2004 service tests ([01b816f](https://github.com/saltstack-formulas/strongswan-formula/commit/01b816f54525a6635b2708fc85de4a78856ef829))
* **kitchen:** avoid using bootstrap for `master` instances [skip ci] ([611d10c](https://github.com/saltstack-formulas/strongswan-formula/commit/611d10c1cb44cf4df16f0b4e2865696d804809c8))
* **kitchen+travis:** remove `master-py2-arch-base-latest` [skip ci] ([c6b97ee](https://github.com/saltstack-formulas/strongswan-formula/commit/c6b97ee75a10ea84f6409b231526bc7552429e4f))
* **travis:** add notifications => zulip [skip ci] ([c864c31](https://github.com/saltstack-formulas/strongswan-formula/commit/c864c316231c73f17e5a4e6b4162319adde3eda0))
* **travis:** opt-in to `dpl v2` to complete build config validation [skip ci] ([0bf76ba](https://github.com/saltstack-formulas/strongswan-formula/commit/0bf76bad8f239ade9c81cef1f32050b983af7cb9))
* **travis:** quote pathspecs used with `git ls-files` [skip ci] ([5bd16b4](https://github.com/saltstack-formulas/strongswan-formula/commit/5bd16b40107ccb4e1f216318ca4700500a608a7e))
* **travis:** run `shellcheck` during lint job [skip ci] ([e5efa45](https://github.com/saltstack-formulas/strongswan-formula/commit/e5efa45082b1e36d20063cade376ea9c152d8dc8))
* **travis:** use `major.minor` for `semantic-release` version [skip ci] ([2a1d244](https://github.com/saltstack-formulas/strongswan-formula/commit/2a1d244ca8c25720be44fa635451c43cad95b81f))
* **workflows/commitlint:** add to repo [skip ci] ([271aa46](https://github.com/saltstack-formulas/strongswan-formula/commit/271aa46ba003b8bb5b398e461e9ca270ba5f72f1))

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
