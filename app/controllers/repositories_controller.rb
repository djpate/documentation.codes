class RepositoriesController < ApplicationController
  
  respond_to :json

  before_action :set_repo, :only => [:show, :filename]

  def index
    @repositories = @github.repos.all
  end

  def show
    #return render :json => @repository
    respond_with @repository
  end

  def filename
    @repo.file(params[:filename]).data
    respond_with @repo.file(params[:filename]).data
  end

  private

  def set_repo
    @repository = Git::Repo.new(@github, params[:owner], params[:name])
  end

end
