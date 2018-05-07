Rails.application.routes.draw do
  get 'orders/index'

  root :to => 'home#index'
  mount ShopifyApp::Engine, at: '/'

  get '/search' => 'home#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
