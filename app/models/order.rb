class Order < ApplicationRecord
  def order.search(search)
    if search
      where('number LIKE ?', "%#{search}%")
    else
      all
  end
end
