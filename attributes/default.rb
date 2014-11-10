default[:logwatch][:mail_to] = "root@localhost"
default[:logwatch][:output] = "stdout"
default[:logwatch][:format] = "html"
default[:logwatch][:range] = "yesterday"
default[:logwatch][:detail] = "Low"
default[:logwatch][:services] = ['All','"-zz-network"','"-zz-sys"','"-eximstats"']
default[:logwatch][:iptables_logfile] = "syslog"

