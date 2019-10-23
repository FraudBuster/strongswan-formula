# frozen_string_literal: true

control 'Strongswan secrets configuration' do
  title 'should match desired lines'

  describe file('/etc/ipsec.secrets') do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0600' }
    its('content') { should_not include 'include /etc/ipsec.secrets.d/*.secrets' }
  end

  describe directory('/etc/ipsec.secrets.d') do
    it { should_not exist }
  end

end
