class Order < ApplicationRecord
  def self.search(orders)
    if orders
      where("number LIKE ?", "%#{orders}%")
    end
end
