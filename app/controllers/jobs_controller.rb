class JobsController < ApplicationController
    skip_before_action :verify_authenticity_token
  
    def create
      @job = Job.new(job_params)
  
      if @job.save
        # Success logic
        render json: @job, status: :created
      else
        # Failure logic
        render json: { errors: @job.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def show
      @job = Job.find(params[:id])
  
      render json: @job, status: :ok
    rescue ActiveRecord::RecordNotFound
      render json: { error: 'Job not found' }, status: :not_found
    end
  
    def index
      @jobs = Job.all
      render 'jobs/index'
    end
  end
  