node default {
}

node 'puppet-master' {
  include role::master_server
  file { '/root/SERVER_NAME':
    ensure => file,
    content => $fqdn,
   }
}

node 'puppet-agent' {
  file { '/root/SERVER_NAME':
    ensure => file,
    content => $fqdn,
   }
}

node 'puppet-centos' {
  file { '/root/SERVER_NAME':
    ensure => file,
    content => $fqdn,
   }
}
  
