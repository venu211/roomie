set :development, :develop
set :unicorn_rack_env, "development"
set :rails_env, 'development'
set :migration_role, 'db'
# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:
 
# server 'example.com', user: 'deploy', roles: %w{app db web}, my_property: :my_value
# server 'example.com', user: 'deploy', roles: %w{app web}, other_property: :other_value
server 'ec2-34-228-6-245.compute-1.amazonaws.com', user: 'deployer', roles: %w{app web db}, 
ssh_options: {
     user: "deployer", # overrides user setting above
     keys: %w(~/.ssh/roomie_deployer),
     forward_agent: true
 }
 
 
# role-based syntax
# ==================
 
# Defines a role with one or multiple servers. The primary server in each
# group is considered to be the first unless any  hosts have the primary
# property set. Specify the username and a domain or IP for the server.
# Don't use `:all`, it's a meta role.
 
# role :app, %w{deploy@example.com}, my_property: :my_value
# role :web, %w{user1@primary.com user2@additional.com}, other_property: :other_value
# role :db,  %w{deploy@example.com}
 
# role :app, %w{deployer@ec2-34-228-6-245.compute-1.amazonaws.com}
# role :web, %w{deployer@ec2-34-228-6-245.compute-1.amazonaws.com}
# role :db,  %w{deployer@ec2-34-228-6-245.compute-1.amazonaws.com}