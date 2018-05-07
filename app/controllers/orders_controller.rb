class OrdersController < ApplicationController
  def index
    @orders = Order.all.paginate(number: params[:number], per_page: 1)
  end
end
