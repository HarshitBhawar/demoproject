class JobsController < ApplicationController
    def index
        @jobs=Job.all
        @user=current_user
        @jobss=@user.jobs.all
    end

    def new
        @job=Job.new
    end

    def create
        @user=current_user
        @job=@user.jobs.new(params.require(:job).permit(:title, :company , :experience , :salary ,:user_id))
        
        if @job.save
            redirect_to jobs_path 
        else
            render :new
        end
    end
   

    def show
       @job=Job.find(params[:id]) 
    end

    def edit
        @user=current_user
       @job=@user.jobs.find(params[:id]) 
    end
    
    def update
        # @job = Job.find(params[:id])
        @user=current_user
        @job=@user.jobs.find(params[:id])

        if @job.update(params.require(:job).permit(:title, :company , :experience , :salary ,:user_id))
          redirect_to jobs_path
        else
          render :edit
        end

    end
    
    def destroy
        @user=current_user
        @job = @user.jobs.find(params[:id])
        @job.destroy
    
        redirect_to jobs_path
    end
  
end
