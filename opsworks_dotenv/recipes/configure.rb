if node[:opsworks][:instance][:layers].include?('rails-app')

  include_recipe "opsworks_dotenv::restart_command"
  include_recipe "opsworks_dotenv::write_config"

end
