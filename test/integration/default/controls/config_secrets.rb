# frozen_string_literal: true

control 'Strongswan secrets configuration' do
  title 'should match desired lines'

  describe file('/etc/ipsec.secrets') do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0600' }
    its('content') { should include 'include /etc/ipsec.secrets.d/*.secrets' }
  end

  describe directory('/etc/ipsec.secrets.d') do
    it { should be_directory }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end

  # we verify presence of all secret files
  %w[conn_a conn_b].each do |secret|
    describe file("/etc/ipsec.secrets.d/#{secret}.secrets") do
      it { should be_file }
      it { should be_owned_by 'root' }
      it { should be_grouped_into 'root' }
      its('mode') { should cmp '0600' }
    end
  end

  # but we only verify the full content of one
  describe file('/etc/ipsec.secrets.d/conn_a.secrets') do
    its('content') { should include '# conn_a' }
    its('content') { should include '10.10.1.1 : PSK "v+NkxY9LLZvwj4qCC2o/gGrWDF2d21jL"' }
  end
end
