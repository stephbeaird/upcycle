class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 25 })
  end

  def search
<<<<<<< HEAD
    
=======
    if params[:search].blank?
      redirect_to(root_path, alert: "Empty field!") and return
    else
      @parameter = params[:search].downcase
      @results = Store.all.where("order(number) LIKE :search", search: @parameter)
>>>>>>> ccefd69337e5a7a3644475a07ace66cc1d3775a6
  end
end
