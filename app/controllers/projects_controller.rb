class ProjectsController < ApplicationController
  before_action :logged_in_user, only: [:index, :show, :new, :create]

  def index
    @projects = current_user.projects
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
    @tasks = @project.tasks.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      @membership = Membership.create(project_id: @project.id, user_id: current_user.id)
    end
    respond_to do |format|
      format.html { redirect_to projects_path }
      format.js
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_path}
      format.js
    end
  end

  private
    
    def project_params
      params.require(:project).permit(:title)
    end
end
