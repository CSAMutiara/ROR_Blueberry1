class TactivitiesController < ApplicationController
    before_action :find_tactivity, only: [:show, :edit, :update, :destroy]
    
    def index
        @tactivities = Tactivity.all.order("created_at DESC")
    end
    
    def show
    end
    
    def new
        @tactivity = Tactivity.new
    end
    
    def create
        @tactivity = Tactivity.new(tactivity_params)
        if @tactivity.save
            redirect_to @tactivity
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
        params.require(:tactivity).permit(:date, :name, :ta1, :ta2, :ta3, :ta4, :status)
    end 
    
    def find_tactivity
        @tactivity = Tactivity.find(params[:id])
    end 
end
