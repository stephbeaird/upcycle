class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 50 })
  end

  def search
    term = params[:term] || nil
    orders = []
    @orders = ShopifyAPI::Order.where(type: "number")
    render json: orders
  end
end