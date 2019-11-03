# config valid only for current version of Capistrano
lock "3.11.0"

set :application, 'find_my_ecom'
set :repo_url, 'git@bitbucket.org:Findmyecomm19/find_my_ecom.git'

set :deploy_to, '/home/ubuntu/www/find_my_ecom'

set :rvm_ruby_version, 'ruby-2.6.2@find_my_ecom'

set :linked_files, %w{config/config.yml config/database.yml config/newrelic.yml config/application.yml}

set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads}

# puma configuration
set :puma_bind,       "unix://#{shared_path}/tmp/sockets/#{fetch(:application)}-puma.sock"
set :puma_state,      "#{shared_path}/tmp/pids/puma.state"
set :puma_pid,        "#{shared_path}/tmp/pids/puma.pid"
set :puma_access_log, "#{release_path}/log/puma.error.log"
set :puma_error_log,  "#{release_path}/log/puma.access.log"
set :ssh_options,     { forward_agent: true, user: fetch(:user), keys: %w(~/.ssh/id_rsa.pub) }
set :puma_preload_app, true
set :puma_worker_timeout, nil
set :puma_init_active_record, true  # Change to false when not using ActiveRecord
set :pty, true

set :assets_roles, [:web, :app]
set :keep_assets, 2

set :delayed_job_server_role, :worker
set :delayed_job_args, "-n 2"
set :linked_dirs, %w{tmp/pids}
namespace :puma do
  desc 'Create Directories for Puma Pids and Socket'
  task :make_dirs do
    on roles(:app) do
      execute "mkdir #{shared_path}/tmp/sockets -p"
      execute "mkdir #{shared_path}/tmp/pids -p"
    end
  end

  before :make_dirs, :start
end

namespace :deploy do
  desc "Make sure local git is in sync with remote."
  task :check_revision do
    on roles(:app) do
    end
  end

  desc 'Initial Deploy'
  task :initial do
    on roles(:app) do
      before 'deploy:restart', 'puma:start'
      invoke 'deploy'
    end
  end

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      invoke 'puma:restart'
    end
  end

  before :starting,     :check_revision
  #after  :finishing,    :precompile_asset
  after  :finishing,    :cleanup
  after  :finishing,    :restart


  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 2, wait: 10 do
    end
  end
  set :keep_releases, 2

  def args
    fetch(:delayed_job_args, "")
  end

  def delayed_job_roles
    fetch(:delayed_job_server_role, :app)
  end

  desc 'Restart the delayed_job process'
  task :restart do
    on roles(delayed_job_roles) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :bundle, :exec, :'bin/delayed_job', args, :restart
        end
      end
    end
  end

  after 'publishing', 'restart'
  namespace :deploy do
    task :restart do
      invoke 'delayed_job:restart'
    end
  end
end
