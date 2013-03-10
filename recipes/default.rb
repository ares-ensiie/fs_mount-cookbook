#
# Cookbook Name:: fs_mount
# Recipe:: default
#
# Author : Leo Unbekandt <leo@soulou.fr>
# Copyright 2013, ARES
#
# All rights reserved - Do Not Redistribute
#

node['fs_mount']['filesystems'].each do |fs|
  mount fs.mountpoint do
    device fs.device
    fstype fs.fstype
  
    fs_options = "defaults"
    if fs.has_key? "options"
      fs_options = fs_options + fs.options
    end
  
    options fs_options
    action [:mount]

    not_if "mount | grep #{fs.device}"
  end

  mount fs.mountpoint do
    device fs.device
    fstype fs.fstype
  
    fs_options = "defaults"
    if fs.has_key? "options"
      fs_options = "#{fs_options},#{fs.options}"
    end
  
    options fs_options
    action [:enable]

    not_if "cat /etc/fstab | grep #{fs.device}"
  end
end
