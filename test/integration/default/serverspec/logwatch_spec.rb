require 'spec_helper'

describe package('logwatch') do
  it { should be_installed }
end

describe file('/etc/cron.daily/00logwatch') do
  it { should be_file }
  its(:content) { should match /usr\/sbin\/logwatch --output mail/ }
end

describe file('/etc/logwatch/conf/services/iptables.conf') do
  it { should be_file }
  its(:content) { should match /LogFile = syslog/ }
  its(:content) { should match /LogFile = iptables/ }
end

