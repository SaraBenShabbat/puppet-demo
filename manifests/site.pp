node default {
}

node 'puppet-master' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => $fqdn,
   }
}

node 'puppet-agent' {
  file { '/root/README':
    ensure => file,
    content => $fqdn,
   }
}

node 'puppet-centos' {
  file { '/root/README':
    ensure => file,
    content => $fqdn,
   }
}
  
