class JobsController < ApplicationController
  
  def index
    @title = 'Job List'
    @jobs = Job.all
  end
  
  def new
    @title = 'New Job'
    @job = Job.new
  end
  
  def create
    @job = Job.new(params[:job])
    if @job.save
          redirect_to(@job, :notice => 'Job was successfully created.')
    else
      render 'new'
    end
  end
  
  def show
    @job = Job.find(params[:id])
    #@title = @job.title          // will be added later
    @owner = @job.owner
  end
  
  def edit
    @job = Job.find(params[:id])
    #@title = "Edit Job:" + @job.title // will be added later
    @owner = @job.owner
  end
  
  def update
    @job = Job.find(params[:id])
    if @job.update_attributes(params[:job])
      redirect_to(@job, :notice => 'Job was successfully updated.')
    else
      render 'edit'
    end
  end
  
  def destroy
    Job.find(params[:id]).destroy
    redirect_to(jobs_path, :notice => 'Job was successfully deleted.')
  end
  
end
