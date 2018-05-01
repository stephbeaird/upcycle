class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 25 })
    @search = Search.new(Order, params[:search])
    @orders = @order.run.paginate(page: params[:number])
  end
end
