#hiera_include('classes', '')
node 'iscsi.agent1.com' {  
      $project='iscsi.agent1'
           include iscsi

} 

