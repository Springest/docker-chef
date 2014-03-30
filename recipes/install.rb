#
# Cookbook Name:: docker-chef
# Recipe:: install
#
# Installs Docker package on Ubuntu.
#
# Copyright (C) 2014 Springest
# License: MIT
#

package "linux-image-extra-#{node['kernel']['release']}"

apt_repository "docker" do
  uri "http://get.docker.io/ubuntu"
  components %w( docker main )
  keyserver "keyserver.ubuntu.com"
  key "36A1D7869245C8950F966E92D8576A8BA88D21E9"
  notifies :run, "execute[apt-get-update]", :immediately
end

execute "apt-get-update" do
  command "apt-get update"
  action :nothing
end

package "lxc-docker"


