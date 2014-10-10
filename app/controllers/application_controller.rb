class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_github_client, :require_github_token

  private

  def set_github_client
    @github = Github.new({
      client_id: Settings.github.client_id, 
      client_secret: Settings.github.client_secret
    })
  end

  def require_github_token
    unless session[:github_token]
      redirect_to new_oauth_path
    end
    @github.oauth_token = session[:github_token]
  end

end
