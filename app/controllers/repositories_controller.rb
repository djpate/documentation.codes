class RepositoriesController < ApplicationController
  
  respond_to :json

  before_action :set_repo, :only => [:show, :filename]

  def index
    @repositories = @github.repos.all
  end

  def show
  end

  def filename
    @repo.file(params[:filename]).data
    respond_with @repo.file(params[:filename]).data
  end

  private

  def set_repo
    repo_data = params[:id].split('/')
    @repo = Git::Repo.new(@github, repo_data[0], repo_data[1])
  end

end
