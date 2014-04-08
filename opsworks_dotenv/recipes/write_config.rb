# Set up app's custom configuration in the environment.
# See https://forums.aws.amazon.com/thread.jspa?threadID=118107

node[:deploy].each do |application, deploy|

  dotenv_template do
    application application
    deploy deploy
    env node[:dotenv][application]
  end

end
