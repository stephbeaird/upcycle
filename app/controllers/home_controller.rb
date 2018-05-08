class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 25 })
    @orders.session[:shopify] = order.number
  end

  def search
    @orders = ShopifyAPI::Order.where(type: "number")
  end
end