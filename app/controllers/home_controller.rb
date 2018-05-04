class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 25 })
  end

  def search
    orders = params[:number][:search]
    @orders = ShopifyAPI::Order.where('number LIKE ?', "%#{params[:search]%"])
  end
end