require 'spec_helper'

describe package('nginx'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

describe service('nginx'), :if => os[:family] == 'redhat' do
  it { should be_enabled }
  it { should be_running }
end

describe file('/etc/nginx/default.d/auth.conf') do
  it { should exist }
end

describe file('/etc/nginx/default.d/status.conf') do
  it { should exist }
end

describe port(80) do
  it { should be_listening }
end

describe command('curl http://localhost') do
  its(:exit_status) { should eq 0 }
end

describe package('ntp'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

describe service('ntpd'), :if => os[:family] == 'redhat' do
  it { should be_enabled }
  it { should be_running }
end

