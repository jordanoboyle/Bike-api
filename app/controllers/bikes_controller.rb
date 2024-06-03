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
    @bike = Bike.find_by(id: 6)
    @bike.name = "Pro Performer 29: Mandalorian Edition"
    @bike.brand = "BMX"
    @bike.price = 1100
    @bike.image_url = "https://gtbicycles.com/cdn/shop/files/Mando_3Q.jpg?v=1698340474&width=900"
    
    if @bike.save
      render json: {message: "Bike information update saved."}
    else
      render json: {message: @bike.errors.full_messages}
    end
  end
  
  def destroy
    render json: {message: "Hello there."}

  end
end
