class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 25 })
    if params[:search]
      @orders = ShopifyAPI::Order.search(params[:search]).number("created_at DESC")
    else
      @orders = ShopifyAPI::Order.all.number('created_at DESC')
    end
  end

  def search
    @orders = ShopifyAPI::Order.find(:all, params[:number])
  end
end