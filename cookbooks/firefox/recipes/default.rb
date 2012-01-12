#
# Cookbook Name:: firefox
# Recipe:: default
#
# Copyright 2012, Webtrends Inc.
#
# All rights reserved
#
# Code based off the PowerShell cookbook by Seth Chisamore

case node['platform']
when "windows"
    windows_package "Firefox" do
        source node['firefox']['http_url']
        installer_type :custom
        options "-ms"
        action :install
    end
else
  Chef::Log.warn('Firefox can only be installed on the Windows platform.')
end