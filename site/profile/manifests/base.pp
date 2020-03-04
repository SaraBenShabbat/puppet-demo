class profile::base {
  user {'admin':
    ensure => present,
  }
  user { "sarabenshabbat":
    ensure     => present,
    uid        => '507',
    gid        => 'admin',
    home       => '/home/sarabenshabbat',
    managehome => true,
    password   => '84920000Sbs_'
  }
}
