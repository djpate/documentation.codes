role :app, %w{deploy@documentation.codes}
role :web, %w{deploy@documentation.codes}
role :db,  %w{deploy@documentation.codes}

set :application, 'codeGenius'
set :repo_url, "git@github.com:djpate/documentation.codes.git"

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, roles: :app, except: { no_release: true } do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

after "deploy:restart"
