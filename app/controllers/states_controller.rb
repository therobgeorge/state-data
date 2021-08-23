class StatesController < ApplicationController
  
  def index
    tours = State.all 
    render json: tours    
  end
end
