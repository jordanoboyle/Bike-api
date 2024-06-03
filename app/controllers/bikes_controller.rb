class BikesController < ApplicationController

  def index
    @bikes = Bike.all 
    render template: "bikes/index"
  end
  
  def show
    @bike = Bike.find_by(id: params[:id])
    render template: "bikes/show"
  end
  
  def create
    render json: {message: "Hello there."}
    
  end
  
  def update
    render json: {message: "Hello there."}
    
  end
  
  def destroy
    render json: {message: "Hello there."}

  end
end
