set :rails_env, :production
set :branch, 'master'
set :deploy_to, '/home/deploy/do_deploy.com'
role :web, %w{deploy@178.128.89.109}
role :db, %w{deploy@178.128.89.109}