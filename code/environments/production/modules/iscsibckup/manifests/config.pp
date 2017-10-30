class iscsi::config{
    file { 'initiatorname.iscsi':
       path    => "/etc/iscsi/initiatorname.iscsi",
       ensure  => present,
#       source  => 'puppet:///modules/iscsi/initiatorname.iscsi',
       content => template('iscsi/initiatorname.iscsi.erb')
#       notify  => Service['open-iscsi'],
  }

   file { 'iscsid.conf':
       path    => "/etc/iscsi/iscsid.conf",
       ensure  => present,
#       source  => 'puppet:///modules/iscsi/iscsid.conf',
       content => template('iscsi/iscsid.conf.erb')
#       notify  => Service['open-iscsi'],
  }

} 

