set :user, "deploy" # make sure you are key authenticated
set :group, "deploy"
set :application, "cmdrkeene"
set :mongrel_user, "deploy"
set :runner, "deploy"

# :deploy_to => /opt/apps/#{application} by default
set :repository, "git@github.com:cmdrkeene/cmdrkeene.git"
set :scm, "git"
set :deploy_via, :remote_cache

role :app, "cmdrkeene.com"
role :web, "cmdrkeene.com"
role :db,  "cmdrkeene.com", :primary => true

namespace :deploy do
  task :restart do
    deprec.mongrel.restart
  end
end