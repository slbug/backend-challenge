class OrdersController < ApplicationController
  def index
    respond_to do |format|
      format.html { }
      format.json { }
    end
  end

  def new
    @order = current_user.orders.new
  end

  def show
    @order = current_user.orders.find(params[:id])

    respond_to do |format|
      format.html { }
      format.json { }
    end
  end

  def create
    @order = current_user.orders.new(order_params)

    if @order.save
      redirect_to root_url
    else
      flash.now[:alert] = @order.errors.full_messages.join("\n")
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(order_items_attributes: [:pizza_type_id, :amount])
  end
end
