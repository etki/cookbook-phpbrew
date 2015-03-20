#
# Cookbook Name:: phpbrew
# Recipe:: default
#
# Copyright 2015, Etki
#

case node['platform']
when 'debian', 'ubuntu'
  %w{
    php5 php5-cli php5-dev php-pear autoconf automake curl build-essential
    libxsltl-dev re2c libxml2 libxml2-dev bison libbz2-dev libreadline-dev
    libfreetype6 libfreetype6-dev libpng12-0 libpng12-dev libjpeg-dev
    libjpeg8-dev libjpeg8 libgd-dev libgd3 libxpm4
    libssl-dev openssl
    gettext libgettextpo-dev libgettextpo0
    libicu48 libicu-dev
    libmhash-dev libmhash-2
    libmcrypt-dev libmcrypt-4
    libmysqlclient-dev libmysqld-dev
  }.each do |p|
    package p
  end
  remote_file 'phpbrew' do
    action :create_if_missing
    mode "a+x"
    source 'https://github.com/phpbrew/phpbrew/raw/master/phpbrew'
    path File.join(node['phpbrew']['install_prefix'], 'phpbrew')
    verify 'phpbrew help'
  end
end
