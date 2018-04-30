Rails.application.routes.draw do
  root :to => 'home#index'
  mount ShopifyApp::Engine, at: '/'

  post '/button', to: 'home_controller#button', as: 'button'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
