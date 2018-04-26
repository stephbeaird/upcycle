class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Product.find(:all, params: { limit: 15 })
  end
end
