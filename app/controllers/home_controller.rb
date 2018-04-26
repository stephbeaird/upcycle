class HomeController < ShopifyApp::AuthenticatedController
  def index
    if params[:search]
      @orders = ShopifyAPI::Order.find(:all, :conditions => ['number LIKE ?', "%#{params[:search]}%"])
    else
      @orders = ShopifyAPI::Order.find(:all)
  end
end
