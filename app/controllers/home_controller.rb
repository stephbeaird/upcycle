class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 25 })
  end

  #GET /button
  def button
    format.js { render js: "alert('simple output');"}
  end
end