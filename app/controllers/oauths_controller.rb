class OauthsController < ApplicationController
  
  skip_before_action :require_github_token

  def new
    redirect_to @github.authorize_url redirect_uri: 'http://localhost:3000/oauth/callback', scope: 'repo'
  end

  def callback
    session[:github_token] = @github.get_token(params[:code]).token
    redirect_to root_path
  end

end