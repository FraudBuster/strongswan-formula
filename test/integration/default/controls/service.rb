# frozen_string_literal: true

control 'Strongswan service' do
  title 'should be running and enabled'

  describe service('strongswan') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
end
