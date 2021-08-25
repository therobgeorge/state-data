class StatesController < ApplicationController
  
  def index
    tours = State.all 
    render json: tours    
  end

  def show
    state = State.find_by(abbreviation: params[:id])
    render json: state
  end

end
