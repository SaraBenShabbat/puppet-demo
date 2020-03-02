node default {
}

node 'puppet-master' {
  include role::master_server
  file { '/root/SERVER_NAME':
    ensure => file,
    content => "Welcome to ${fqdn}!\n",
    owner => 'root',
   }
}

node 'puppet-agent' {
  include role::master_server
  file { '/root/SERVER_NAME':
    ensure => file,
    content => "Welcome to ${fqdn}!\n",
   }
}

node 'puppet-centos' {
  include role::master_server
  file { '/root/SERVER_NAME':
    ensure => file,
    content => "Welcome to ${fqdn}!\n",
   }
}
  
