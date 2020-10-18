# frozen_string_literal: true

if ['bsd'].include?(os[:family])
  prefix = '/usr/local'
  root_group = 'wheel'
else
  prefix = ''
  root_group = 'root'
end

control 'Strongswan secrets configuration' do
  title 'should match desired lines'

  describe file("#{prefix}/etc/ipsec.secrets") do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into root_group.to_s }
    its('mode') { should cmp '0600' }
    its('content') { should include "include #{prefix}/etc/ipsec.secrets.d/*.secrets" }
  end

  describe directory("#{prefix}/etc/ipsec.secrets.d") do
    it { should be_directory }
    it { should be_owned_by 'root' }
    it { should be_grouped_into root_group.to_s }
  end

  # we verify presence of all secret files
  %w[conn_a conn_b].each do |secret|
    describe file("#{prefix}/etc/ipsec.secrets.d/#{secret}.secrets") do
      it { should be_file }
      it { should be_owned_by 'root' }
      it { should be_grouped_into root_group.to_s }
      its('mode') { should cmp '0600' }
    end
  end

  # but we only verify the full content of one
  describe file("#{prefix}/etc/ipsec.secrets.d/conn_a.secrets") do
    its('content') { should include '# conn_a' }
    its('content') do
      should include '10.10.1.1 : PSK "v+NkxY9LLZvwj4qCC2o/gGrWDF2d21jL"'
    end
  end
end
