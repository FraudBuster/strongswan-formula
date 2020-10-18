# frozen_string_literal: true

if ['bsd'].include?(os[:family])
  prefix = '/usr/local'
  root_group = 'wheel'
else
  prefix = ''
  root_group = 'root'
end

control 'Strongswan global configuration' do
  title 'should match desired lines'

  describe file("#{prefix}/etc/ipsec.conf") do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into root_group.to_s }
    its('mode') { should cmp '0644' }
    its('content') { should include 'config setup' }
    its('content') { should include '    strictcrlpolicy=yes' }
    its('content') { should include '    uniqueids=no' }
    its('content') { should include 'conn %default' }
    its('content') { should include '    keyingtries=1' }
    its('content') { should include "include #{prefix}/etc/ipsec.conf.d/*.conf" }
  end

  describe file("#{prefix}/etc/ipsec.secrets") do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into root_group.to_s }
    its('mode') { should cmp '0600' }
    its('content') { should include "include #{prefix}/etc/ipsec.secrets.d/*.secrets" }
  end
end
