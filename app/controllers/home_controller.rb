class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 50 })
  end

  def search
    if params[:number]
      @orders = ShopifyAPI::Order.where(type: "number")
    else
      @orders = ShopifyAPI::Order.all
  end
end
