class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 25 })
    @orders = Order.search(params[:search], params[:id])
  end

  #GET /button
  def button
    format.js { render js: "alert('simple output');"}
  end
end
