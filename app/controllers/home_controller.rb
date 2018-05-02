class HomeController < ShopifyApp::AuthenticatedController
  def index
    if params[:search]
      @orders = ShopifyAPI::Order.search(:all, params[:number])
    else
      @orders = ShopifyAPI::Order.find(:all, parmas: { limit: 25 })
    end
  end

  def search
    @orders = ShopifyAPI::Order.find(:all, params[:number])
  end
end
