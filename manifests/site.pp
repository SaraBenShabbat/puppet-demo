node default{
}

node 'puppet-master' {
  user { "sarabenshabbat":
    ensure     => present,
    uid        => '507',
    gid        => 'admin',
    home       => '/home/sarabenshabbat',
    managehome => true,
    password   => '84920000Sbs_'
  }
}

node 'puppet-agent' {
  include role::master_server
}

node 'puppet-centos' {
  include role::master_server
}
