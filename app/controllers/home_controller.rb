class HomeController < ShopifyApp::AuthenticatedController
  def index
    if params[:number]
      @orders = ShopifyAPI::Order.find(:all, params: { limit: 25 })
    else
      @orders = Order.all
    end
  end

  def search
    @orders = ShopifyAPI::Order.where(type: "number")
    params.require(:search).permit(:order, :order_number)
  end
end