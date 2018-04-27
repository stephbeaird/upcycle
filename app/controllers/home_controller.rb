class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 25 })
    @price_rules = Price_Rules.find(:all)
  end
end