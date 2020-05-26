# frozen_string_literal: true

service_name = 'strongswan'
if (os[:name] == 'ubuntu') && os[:release].start_with?('20')
  service_name = 'strongswan-starter'
end

control 'Strongswan service' do
  title 'should be running and enabled'

  describe service(service_name) do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
end
