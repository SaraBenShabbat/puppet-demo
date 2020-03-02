node default {
}

node 'puppet-master' {
  include role::master_server
}

node 'puppet-agent' {
}

node 'puppet-centos' {

}
  
