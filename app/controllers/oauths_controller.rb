class OauthsController < ApplicationController
  
  skip_before_action :require_github_token

  def new
    redirect_to @github.authorize_url redirect_uri: callback_oauth_url, scope: 'repo'
  end

  def callback
    session[:github_token] = @github.get_token(params[:code]).token
    redirect_to root_path
  end

end