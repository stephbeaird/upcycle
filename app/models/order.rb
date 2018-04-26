class Order < ActiveRecord::Base
  include ShopifyApp::SessionStorage
  include PgSearch
  pg_search_scope :search_by_order_number, against: [:order, :number]
end
  