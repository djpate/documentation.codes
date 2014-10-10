role :app, %w{deploy@documentation.codes}
role :web, %w{deploy@documentation.codes}
role :db,  %w{deploy@documentation.codes}

set :application, 'codeGenius'
set :repo_url, "git@github.com:djpate/documentation.codes.git"
