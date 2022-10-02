class JobsController < ApplicationController
    def index
        @jobs=Job.all
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
       @job=Job.find(params[:id]) 
    end
    
    def update

    end
    
    def delete
    end
  
end
