class Search < ActiveRecord::Base
  include ShopifyApp::SessionStorage
  @orders = ShopifyAPI::Order.paginate(:number => params[:number])
end
