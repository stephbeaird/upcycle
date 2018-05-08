class HomeController < ShopifyApp::AuthenticatedController
    validates :number, presence: true
  end

  Order.create(number: nil).valid? # => false

  def index
    @orders = ShopifyAPI::Order.find(:all, params: { limit: 25 })
  end

  def search
    @orders = ShopifyAPI::Order.where(type: "number")
  end
end
