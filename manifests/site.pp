node default{
}

node 'puppet-master' {
  include role::master_server
  user { "sarabenshabbat":
    ensure     => present,
    uid        => '507',
    gid        => 'admin',
    home       => '/home/sarabenshabbat',
    managehome => true,
  }
}

node 'puppet-agent' {
  file { '/root/README':
    ensure => file,
    content => "${fqdn}, Good Night !\n",
  }
  
#  include role::app_server
#  include role::minecraft_server
#  include wordpress
#  include ::wordpress
}

node 'puppet-centos' {
  file { '/root/README':
    ensure => file,
    content => "${fqdn}, Good Night !\n",
  }
  
#  include role::db_server
#  include ::wordpress
}








#node default {
#}

#node 'puppet-master' {
#  include role::master_server
#  file { '/root/SERVER_NAME':
#    ensure => file,
#    content => "Welcome to ${fqdn}!\n",
#    owner => 'root',
#   }
#}

#node 'puppet-agent' {
#include role::master_server
#  file { '/root/SERVER_NAME':
#    ensure => file,
#    content => "Welcome to ${fqdn}!\n",
#   }
#}

#node 'puppet-centos' {
#  include role::master_server
#  file { '/root/INFO_TIMEZONE':
#    ensure => file,
#    content => "Now ${timezone}!\n",
#   }
#}
  
