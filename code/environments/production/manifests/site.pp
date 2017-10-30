hiera_include(classes)
#hiera_include('classes', '')
node 'iscsi.agent1.com' {  
           include iscsi
#        class { "iscsi":
#            initiatorname => ['working']
    


#}

} 

