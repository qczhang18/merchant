Rails.application.routes.draw do
  match '/auth/:provider/callback', to: 'sessions#create', via: :get
  match "/login" => redirect("/auth/twitter"), as: :login, via: :get
  match "/logout" => "sessions#destroy", as: :logout, via: :get

  resources :orders
  resources :order_items
  resources :products
  root 'products#index'
end
