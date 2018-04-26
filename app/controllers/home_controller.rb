class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 25 })
    if params[:search]
      @orders = Order.search(params[:search]).number("created_at DESC")
    else
      @orders = Order.all.number("created_at DESC")
  end
end
