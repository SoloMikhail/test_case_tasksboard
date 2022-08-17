class ProjectsController < ApplicationController
  before_action :set_project!, only: %i[show destroy edit update]

  def show
    @job = @project.jobs.build
    @jobs = @project.jobs.order created_at: :desc

  end

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:success] = "Project created!"
      redirect_to projects_path
      else
        render :new
      end
  end

  def edit
  end

  def update
    if @project.update(project_params)
      flash[:success] = "Project update!"
      redirect_to projects_path
      else
        render :edit
      end
  end

  def destroy
    @project.destroy
    flash[:success] = "Project deleted!"
    redirect_to projects_path
  end

private
  def project_params
    params.require(:project).permit(:name, :summary, :start_date, :due_date)
  end

  def set_project!
    @project = Project.find(params[:id])
  end
end
