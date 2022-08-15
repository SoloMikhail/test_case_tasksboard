class JobsController < ApplicationController
  def show
    @job = Job.find(params[:id])
  end

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      flash[:success] = "Task created!"
      redirect_to jobs_path
      else
        render :new
      end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      flash[:success] = "Task update!"
      redirect_to jobs_path
      else
        render :edit
      end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    flash[:success] = "Task deleted!"
    redirect_to jobs_path
  end

private
def job_params
  params.require(:job).permit(:title, :content, :status, :estimation, :start_date, :due_date)
end

end
