class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 25 })
    @price_rule = ShopifyAPI::Price_Rule.find(:all, params: { limit: 25 })
  end
end
