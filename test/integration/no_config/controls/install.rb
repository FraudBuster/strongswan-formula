# frozen_string_literal: true

control 'Strongswan package' do
  title 'should be installed'

  describe package('strongswan') do
    it { should be_installed }
  end
end
