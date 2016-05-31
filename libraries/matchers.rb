if defined?(ChefSpec)
  def create_rundeck_server_project(res_name)
    ChefSpec::Matchers::ResourceMatcher.new(:rundeck_server_project, :create, res_name)
  end

  def delete_rundeck_server_project(res_name)
    ChefSpec::Matchers::ResourceMatcher.new(:rundeck_server_project, :delete, res_name)
  end

  def create_rundeck_server_job(res_name)
    ChefSpec::Matchers::ResourceMatcher.new(:rundeck_server_job, :create, res_name)
  end

  def delete_rundeck_server_job(res_name)
    ChefSpec::Matchers::ResourceMatcher.new(:rundeck_server_job, :delete, res_name)
  end
end
