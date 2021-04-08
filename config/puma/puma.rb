# This is fork config puma file
# Download it to /home/deploy/base_proj/shared/puma.rb

#!/usr/bin/env puma
app_dir = "/home/deploy/base_proj"

directory "#{app_dir}/current"
rackup "/home/deploy/base_proj/current/config.ru"
environment 'production'

tag ''

pidfile "#{app_dir}/shared/tmp/pids/puma.pid"
state_path "#{app_dir}/shared/tmp/pids/puma.state"
stdout_redirect "#{app_dir}/current/log/puma.error.log", "#{app_dir}/current/log/puma.access.log", true


threads 4,16



bind "unix:///#{app_dir}/shared/tmp/sockets/puma.sock"

workers 0





preload_app!


on_restart do
  puts 'Refreshing Gemfile'
  ENV["BUNDLE_GEMFILE"] = ""
end


before_fork do
  ActiveRecord::Base.connection_pool.disconnect!
end

on_worker_boot do
  ActiveSupport.on_load(:active_record) do
    ActiveRecord::Base.establish_connection
  end
end

