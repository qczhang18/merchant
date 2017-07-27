Rails.application.routes.draw do
  match '/auth/:provider/callback', to: 'sessions#create', via: :get

  resources :orders
  resources :order_items
  resources :products
end
