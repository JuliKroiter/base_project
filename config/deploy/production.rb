# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

# server "example.com", user: "deploy", roles: %w{app db web}, my_property: :my_value
# server "example.com", user: "deploy", roles: %w{app web}, other_property: :other_value
# server "db.example.com", user: "deploy", roles: %w{db}
server '165.22.4.124', port: 22, roles: [:web, :app, :db], primary: true


# role-based syntax
# ==================

# Defines a role with one or multiple servers. The primary server in each
# group is considered to be the first unless any hosts have the primary
# property set. Specify the username and a domain or IP for the server.
# Don't use `:all`, it's a meta role.

role :app, %w{root@165.22.4.124}
role :web, %w{root@165.22.4.124}
role :db,  %w{root@165.22.4.124}

set :ssh_options, { forward_agent: true, user: fetch(:user), keys: %w(~/.ssh/id_rsa) }


set :rails_env, 'production'
set :stage, :production

set :keep_assets, 2

set :deploy_to, "/home/ruz_project"
set :tmp_dir, "/home/ruz_project/tmp"
set :ssh_address, "rails@165.22.4.124"
set :branch, "master"
set :user, "root"
set :use_sudo, true
set :rvm_custom_path, '/usr/share/rvm'


set :rvm_type, :system
set :rvm_ruby_version, '2.6.2'


require "net/scp"
require 'active_support/core_ext/object/blank'



namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:all) do
      # execute 'service nginx restart'
    end
  end

  after :restart, 'sidekiq:restart'
  before :restart, 'sitemap:create'
end





# Configuration
# =============
# You can set any configuration variable like in config/deploy.rb
# These variables are then only loaded and set in this stage.
# For available Capistrano configuration variables see the documentation page.
# http://capistranorb.com/documentation/getting-started/configuration/
# Feel free to add new variables to customise your setup.



# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult the Net::SSH documentation.
# http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/user_name/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# The server-based syntax can be used to override options:
# ------------------------------------
# server "example.com",
#   user: "user_name",
#   roles: %w{web app},
#   ssh_options: {
#     user: "user_name", # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: "please use keys"
#   }
