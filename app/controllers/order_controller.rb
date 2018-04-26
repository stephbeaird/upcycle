class OrderController < ShopifyApp::AuthenticatedController
  if params[:number]
    @orders = Order.search_by_order_number(params[:number])
  else
    @orders = Order.all
  end
end