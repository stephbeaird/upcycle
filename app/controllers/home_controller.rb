class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Order.search(params[:search])
  end

  def search
    @orders = ShopifyAPI::Order.where(type: "number")
  end
end
 