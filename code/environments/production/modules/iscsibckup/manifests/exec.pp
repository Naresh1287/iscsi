class iscsi::exec{

#exec {'rm -rf /etc/iscsi/nodes/ /etc/iscsi/send_targets/':
#      path  => 'usr/bin/:/sbin/:/bin/',
#}



exec {'iscsiadm -m discovery -t sendtargets -p 172.16.165.72':
      path  => 'usr/bin/:/sbin/',
}


 
exec { 'iscsiadm --mode node -T iqn.2017-10.com.iscsi-server:disk1 --portal 172.16.165.72 --login':
   path  => 'usr/bin/:/sbin/',
}
}

