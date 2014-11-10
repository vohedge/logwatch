#
# Cookbook Name:: logwatch
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apt"

package "logwatch" do
  action :install
end

template "/etc/cron.daily/00logwatch" do
  source "00logwatch.erb"
  mode 0755
  owner "root"
  group "root"
  variables({
    mail_to: node[:logwatch][:mail_to]
  })
end

# For blow error.
# /var/cache/logwatch No such file or directory at /usr/sbin/logwatch line 633.
directory "/var/cache/logwatch" do
  owner "root"
  group "root"
  mode 00644
  action :create
end

# Fix missing iptables log problem
template "/etc/logwatch/conf/logwatch.conf" do
  source "logwatch.conf.erb"
  mode 0644
  owner "root"
  group "root"
  variables({
    output:   node[:logwatch][:output],
    format:   node[:logwatch][:format],
    mail_to:  node[:logwatch][:mail_to],
    range:    node[:logwatch][:range],
    detail:   node[:logwatch][:detail],
    services: node[:logwatch][:services]
  })
end

# Fix missing iptables log problem
template "/etc/logwatch/conf/services/iptables.conf" do
  source "iptables.conf.erb"
  mode 0644
  owner "root"
  group "root"
  variables({
    iptables_logfile: node[:logwatch][:iptables_logfile]
  })
end

bash "logwatch-test" do
  code "/usr/sbin/logwatch --output mail --mailto #{node[:logwatch][:mail_to]} --detail high --range today"
end

