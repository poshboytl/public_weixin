require 'bundler/capistrano'

load 'deploy/assets'

set :application, "Knewstar"
set :repository,  "git@github.com:poshboytl/public_weixin.git"
ssh_options[:forward_agent] = true

set :scm, :git
set :deploy_via, :remote_cache
set :deploy_to, "/var/www/knewstar"
set :use_sudo, false
set :keep_releases, 5

set :rails_env, "production"
set :branch, "master"

role :web, "knewstar.com"                          # Your HTTP server, Apache/etc
role :app, "knewstar.com"                          # This may be the same as your `Web` server
role :db,  "knewstar.com", :primary => true # This is where Rails migrations will run

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  desc "symlink shared files"
  task :symlink_shared, :roles => :app do
    run "ln -nfs #{shared_path}/database.yml #{release_path}/config/database.yml"
  end

  task :start do
    run "monit start puma"
  end

  task :stop do
    run "monit stop puma"
  end

  task :restart, :roles => :app, :except => { :no_release => true } do
    run "kill -USR2 `cat #{current_path}/tmp/pids/puma.pid`"
  end
end

before 'deploy:assets:precompile', 'deploy:symlink_shared'
#after 'deploy:assets:precompile', 'deploy:symlink_assets'
