class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 25 })
  end

  def search
    @orders = ShopifyAPI::Order.where(type: "number" )
  end

  private
  def order_params
    params.require(:order).permit(:number)
  end
end
