class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 50 })
  end

  def search
    limit = params[:limit] || 10
    page = params[:page] || 10
    offset = ((page.to_i -1) * limit.to_i) || 0
    term = params[:term] || nil
    orders = [:number, :first_name, :last_name]
    @orders = ShopifyAPI::Order.where(type: "number", "first name", "last name")
    render json: orders
  end
end