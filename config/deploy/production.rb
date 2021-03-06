lock "~> 3.10.1"

set :application, "do_deploy"
set :repo_url, "git@github.com:shes50103/do_deploy.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
append :linked_files, "config/database.yml", "config/secrets.yml", "config/settings.yml"

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"


set :rails_env, :production
set :branch, 'master'
set :deploy_to, '/home/deploy/do_deploy.com'
role :web, %w{deploy@178.128.89.109}
role :db, %w{deploy@178.128.89.109}