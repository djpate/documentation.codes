Rails.application.routes.draw do
  root 'home#index'
  resource :oauth, :only => [:new] do
    get "callback"
  end
  resources :repositories, :only => [:index, :show]
  get "/repositories/:id/:filename", :controller => :repositories, :action => :filename, :constraints => {filename: /[^\/]+/}
end
