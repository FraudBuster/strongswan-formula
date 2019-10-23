# frozen_string_literal: true

control 'Strongswan secrets configuration' do
  title 'should match desired lines'

  describe directory('/etc/ipsec.secrets.d') do
    it { should_not exist }
  end
end
