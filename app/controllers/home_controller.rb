class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 25 })
    @pricerules = ShopifyAPI::PriceRule.find(:all)
  end
end
