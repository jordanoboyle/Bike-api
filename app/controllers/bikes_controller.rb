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
    @bike = Bike.new()
    @bike.name = "Test from RAILS"
    @bike.brand = "My own brand"
    @bike.price = 5000
    @bike.image_url = "this should be a url"

    @bike.save
    render json: {message: "Hello there."}
    
  end
  
  def update
    render json: {message: "Hello there."}
    
  end
  
  def destroy
    render json: {message: "Hello there."}

  end
end
