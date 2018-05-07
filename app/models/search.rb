class Search < ActiveRecord::Base
  include ShopifyApp::SessionStorage
  @orders = Order.paginate(:number => params[:number])
end