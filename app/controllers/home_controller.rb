class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 25 })
  end

  def search
    @orders = ShopifyAPI::Order.where(type: "number" )
  end
end
 