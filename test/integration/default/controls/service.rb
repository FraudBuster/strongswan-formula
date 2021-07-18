# frozen_string_literal: true

service_name =
  case system.platform[:finger]
  when 'ubuntu-20.04', 'debian-11'
    'strongswan-starter'
  else
    'strongswan'
  end

control 'Strongswan service' do
  title 'should be running and enabled'

  describe service(service_name) do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
end
