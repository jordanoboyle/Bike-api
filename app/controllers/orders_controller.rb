class OrdersController < ApplicationController

  def create
    p current_user
    bike = Bike.find_by(id: params[:bike_id])
    q = params[:quantity].to_i
    tax_rate = (bike.price * 0.10) * q
    total_complete = (bike.price * q) + tax_rate

    @order = Order.new(
      user_id: current_user.id, 
      bike_id: bike.id,
      quantity: q, 
      subtotal: bike.price * q, # from bike
      tax: tax_rate,#need to make q based
      total: total_complete, #need to make q based
    )
    if @order.save
      render template: "orders/show"
    else
      render json: {ERRORS: order.errors.full_messages}
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
