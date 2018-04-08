class TeachingActivitiesController < ApplicationController
    before_action :find_tactivity, only: [:show, :edit, :update, :destroy]
    
    def index
        @teaching_activities = TeachingActivity.all.order("created_at DESC")
    end
    
    def show
    end
    
    def new
        @teaching_activity = TeachingActivity.new
    end
    
    def create
        @teaching_activity = TeachingActivity.new(tactivity_params)
        if @teaching_activity.save
            redirect_to @teaching_activity
        else 
            render 'new'
        end 
    end
    
    def edit
    end
    
    def update
    end 
    
    def destroy
    end 
    
    private
    
    def tactivity_params
        params.require(:teaching_activity).permit(:date, :name, :ta1, :ta2, :ta3, :ta4, :status)
    end 
    
    def find_tactivity
        @teaching_activity = TeachingActivity.find(params[:id])
    end 
end
