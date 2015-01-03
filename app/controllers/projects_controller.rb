class ProjectsController < ApplicationController

  def index
    @projects = Project.all
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
      flash[:success] = "New project created."
      redirect_to root_url
    else
      render 'new'
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to root_url
  end

  private
    
    def project_params
      params.require(:project).permit(:title)
    end
end
