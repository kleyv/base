class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.creator = current_user
    if @project.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @project = Project.find(params[:id])
    @chat = @project.chat
  end

  private

  def project_params
    params.require(:project).permit(:name, :description)
  end

end
