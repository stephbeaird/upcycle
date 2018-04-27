class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 25 })
  end

  def search
    if params[:search].blank?
      redirect_to(root_path, alert: "Empty field!") and return
    else
      @parameter = params[:search].downcase
      @results = Store.all.where("order(number) LIKE :search", search: @parameter)
  end
end
