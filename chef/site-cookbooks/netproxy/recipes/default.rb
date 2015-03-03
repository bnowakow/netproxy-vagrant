#
# Cookbook Name:: netproxy
# Recipe:: default
#
# Copyright 2015, bnowakow
#
#

bash "get netproxy source" do
  # user node['user']['name']
  # TODO provide proper node config as above
  user 'vagrant'
  cwd '/home/vagrant'
  action :run   
  environment ({'HOME' => '/home/vagrant', 'USER' => 'vagrant'}) 
  code <<-EOH
    git clone 'https://github.com/skorokithakis/netproxy.git'
    
    cd netproxy
    python preprocess.py
  EOH
  # TODO provide proper node config for path
  not_if { Dir.exists?("/home/vagrant/netproxy") }
end

bash "run netproxy " do
  # user node['user']['name']
  # TODO provide proper node config as above
  cwd '/home/vagrant'
  action :run   
  environment ({'HOME' => '/home/vagrant'}) 
  code <<-EOH    
    cd netproxy
    docker build -t skorokithakis/netproxy .
    docker run -p 53:53/udp -p 80:80 -p 443:443 -d skorokithakis/netproxy
  EOH
  # TODO check if server already runs
  # not_if { Dir.exists?("/home/vagrant/netproxy") }
end
