class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 15 })
  end
end
