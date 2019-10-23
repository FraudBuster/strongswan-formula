# frozen_string_literal: true

control 'Strongswan connections configuration' do
  title 'should match desired lines'

  describe directory('/etc/ipsec.conf.d') do
    it { should_not exist }
  end
end
