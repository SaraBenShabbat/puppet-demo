node default{
}

node 'puppet-master' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to ${fqdn}\n",
  }
}

node 'puppet-agent' {
#  include role::app_server
#  include role::minecraft_server
  include wordpress
}

node 'puppet-centos' {
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
  
