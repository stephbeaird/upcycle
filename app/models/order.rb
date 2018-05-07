class Order < ApplicationRecord
  def self.search(search, number)
    paginate :per_number => 1, :number => number,
             :conditions =>['number like ?', "%#{search}%"]
             :order => 'number'
  end
end
