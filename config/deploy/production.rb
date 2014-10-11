role :app, %w{deploy@documentation.codes}
role :web, %w{deploy@documentation.codes}
role :db,  %w{deploy@documentation.codes}

set :application, 'codeGenius'
set :repo_url, "git@github.com:djpate/documentation.codes.git"

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart do
    on roles(:app) do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end
  after "deploy", "restart"
end

