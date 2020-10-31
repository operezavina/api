Rails.application.routes.draw do
  resources :products, only: [:index, :show]
  resources :product_details, only: [:index, :show]
  resources :users

  post "/login", to: "users#login"
  get "/confirmation/:id", to: "product_confirmation#sale"
end
