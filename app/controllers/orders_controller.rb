class OrdersController < ApplicationController

  def create
    p current_user
    @order = Order.new(
      user_id: params[:user_id], #from current user
      bike_id: params[:bike_id],
      quantity: params[:quantity], 
      subtotal: params[:subtotal], # from bike
      tax: params[:tax], #need to make q based
      total: params[:total], #need to make q based
    )
    if @order.save
      render template: "orders/show"
    end
  end
    
  def show
    @order = Order.find_by(id: 2)
    render template: "orders/show"
      
  end
      
  def index
    @orders = Order.all
    render template: "orders/index"

  end
end
