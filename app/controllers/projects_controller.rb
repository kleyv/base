class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.creator = current_user
    if @project.save
      @chat = Chat.create! name: "Chat", chatable: @project
      redirect_to project_path(@project)
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
