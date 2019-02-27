control 'Strongswan configuration' do
  title 'should match desired lines'

  describe file('/etc/ipsec.conf') do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0644' }
    its('content') { should include 'conn setup' }
    its('content') { should include '   strictcrlpolicy = yes' }
    its('content') { should include '   uniqueids = no' }
  end
end
