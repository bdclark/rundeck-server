include_recipe 'rundeck-server'

node.default['rundeck_test']['project_name'] = 'test-project-ssh'

rundeck_server_project node['rundeck_test']['project_name'] do
  executor :ssh
  sources [
    { 'type'           => 'url',
      'config.url'     => 'http://chefserver_bridge:9980/',
      'config.timeout' => 30,
    },
  ]
end

rundeck_server_project 'test-project-custom' do
  executor(
    provider: 'overthere-winrm',
    config: {
      'winrm-auth-type' => 'kerberos',
      'winrm-protocol'  => 'https',
    },
  )
  sources [
    { 'type'           => 'url',
      'config.url'     => 'http://chefserver_bridge:9980/',
      'config.timeout' => 30,
    },
  ]
end
