class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Order.all
  end

  def search
    @orders = ShopifyAPI::Order.where(type: "number")
  end
end