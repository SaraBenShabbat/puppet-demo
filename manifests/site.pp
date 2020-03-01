node default {
}

node 'puppet-master' {
  include role::master_server
}

node 'puppet-agent' {
  include role::db_server
}

node 'puppet-centos' {

}
  
