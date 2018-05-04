class Search < ActiveRecord::Base
  include ShopifyApp::SessionStorage
  def self.search(orders)
    if orders
      where("number LIKE ?", "%#{orders}%")
    end
  end
end
