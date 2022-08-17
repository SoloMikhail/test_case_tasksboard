class JobsController < ApplicationController
  before_action :set_project!

  def create
    @job = @project.jobs.build job_params

    if @job.save
      flash[:success] = "Task created!"
      redirect_to project_path(@project)
      else
        @jobs = Job.order created_at: :desc
        render 'projects/show'
      end
  end

  def destroy
    job = @project.jobs.find params[:id]
    job.destroy
    flash[:success] = "Task deleted!"
    redirect_to project_path(@project)
  end

  private
  def job_params
    params.require(:job).permit(:title, :content, :status, :estimation, :start_date, :due_date)
  end

  def set_project!
    @project = Project.find params[:project_id]
  end
end
