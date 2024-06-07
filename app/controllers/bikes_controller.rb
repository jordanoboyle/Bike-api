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
    @bike.name = params[:name]
    @bike.brand = params[:brand]
    @bike.price = params[:price]
    @bike.image_url = params[:image_url]

    if @bike.save
      render json: {message: "New Bike has been saved"}
    else
      render json: {ERRORS: @bike.errors.full_messages}
    end
  end
  
  def update
    @bike = Bike.find_by(id: params[:id])
    @bike.name = params[:name] || @bike.name
    @bike.brand = params[:brand] || @bike.brand
    @bike.price = params[:price] || @bike.price
    @bike.image_url = params[:image_url] || @bike.image_url
    
    if @bike.save
      render json: {message: "Bike information update saved."}
    else
      render json: {message: @bike.errors.full_messages}
    end
  end
  
  def destroy
    @bike = Bike.find_by(id: params[:id]) 
    
    if @bike.destroy
      render json: {message: "Hello there."}
    else
      render json: {ERRORS: @bike.errors.full_messages}
    end
  end

end
