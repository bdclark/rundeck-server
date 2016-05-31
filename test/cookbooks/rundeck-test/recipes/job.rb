node.default['rundeck_test']['job_name'] = 'test-job'

rundeck_server_job node['rundeck_test']['job_name'] do
  project 'project'
  api_token 'random_token'
  config(
    description: '',
    loglevel: 'INFO',
    sequence: {
      commands: [
        exec: 'a command',
      ],
    })
end
