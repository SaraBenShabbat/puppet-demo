node default {
}

node 'puppet-master' {
  include role::master_server
  file { '/root/SERVER_NAME':
    ensure => file,
    content => "Welcome to ${fqdn}\n",
   }
}

node 'puppet-agent' {
  file { '/root/SERVER_NAME':
    ensure => file,
    content => "Welcome to ${fqdn}\n",
   }
}

node 'puppet-centos' {
  file { '/root/SERVER_NAME':
    ensure => file,
    content => "Welcome to ${fqdn}\n",
   }
}
  
