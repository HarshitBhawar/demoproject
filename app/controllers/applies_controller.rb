class AppliesController < ApplicationController
      def index
        
        @applys=Apply.all
    end
    def new
        @apply=Apply.new
    end
    def create
        @job = Job.find(params[:job_id])
        @applys = @job.applies.create(applys_params) 
        
    end
    def destroy
        @job = Job.find(params[:job_id])
        @apply = @jobs.applies.find(params[:id])
        @apply.destroy
        redirect_to job_path(@job), status: :see_other
    end
    
    private
    def applys_params
        params.require(:apply).permit( :name, :tenthpercent, :twelvepercent, :ugpercent, :pgpercent,:job_id)
    end
    
   
    
end

