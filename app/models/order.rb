class Order < ApplicationRecord
  def self.search(search)
    if search
      find(:all, :conditions => ['number LIKE ?', "%#{search}%"])
    else
      find(:all)
  end
end
