ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "b549a24e42dc1991c15cef41425fb77d"
  config.secret = "e7d01270cd6213f704b525665bc3483d"
  config.scope = "read_orders, read_products"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end
