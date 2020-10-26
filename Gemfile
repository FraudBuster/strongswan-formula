# frozen_string_literal: true

source 'https://rubygems.org'

# Use the latest version of `inspec` prior to `4.23.4`, which introduces a
# regression where the diff isn't displayed when comparing using `eq`.
gem 'inspec',      '~> 4.22.22'
# Install the `kitchen-docker` gem from GitHub because the latest version
# currently available (`2.10.0`) doesn't include a recent fix for Gentoo.
gem 'kitchen-docker', github: 'test-kitchen/kitchen-docker', ref: '41e80fe'
gem 'kitchen-inspec', '>= 2.2.1'
gem 'kitchen-salt', '>= 0.6.3'
