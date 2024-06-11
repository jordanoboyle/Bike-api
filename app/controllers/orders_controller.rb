class OrdersController < ApplicationController

  def create
    order = Order.new(
      user_id: 1,
      bike_id: 2,
      quantity: 1,
      price: 500,
      tax: 50,
      total: 
    )
  end
    
  def show
    render json: {message: "hellow there"}
      
  end
      
  def index
    render json: {message: "hellow there"}

  end
end
