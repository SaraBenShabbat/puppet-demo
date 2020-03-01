node default {
}

node 'puppet-master' {
  include role::master_server
}

node 'puppet-agent' {
  include role::app_server
}

node 'puppet-centos' {
  include role::db_server
}
  
