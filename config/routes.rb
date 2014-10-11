Rails.application.routes.draw do
  root 'home#index'
  resource :oauth, :only => [:new] do
    get "callback"
  end
  resources :repositories, :only => :index
  get "/repositories/:owner/:name", :action => "show", :controller => "repositories"
end
