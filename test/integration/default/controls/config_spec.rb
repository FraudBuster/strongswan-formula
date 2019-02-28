control 'Strongswan configuration' do
  title 'should match desired lines'

  describe file('/etc/ipsec.conf') do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0644' }
    its('content') { should include 'conn setup' }
    its('content') { should include '   strictcrlpolicy=yes' }
    its('content') { should include '   uniqueids=no' }
    its('content') { should include 'include /etc/ipsec.conf.d/*.conf' }
  end

  describe directory('/etc/ipsec.conf.d') do
    it { should be_directory }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end

  ['conn_a', 'conn_b'].each do |conn|
    describe file("/etc/ipsec.conf.d/#{conn}.conf") do
      it { should be_file }
      it { should be_owned_by 'root' }
      it { should be_grouped_into 'root' }
      its('mode') { should cmp '0644' }
      its('content') { should include "conn #{conn}" }
    end
  end

end
