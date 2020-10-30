Rails.application.routes.draw do
  resources :products, only: [:index, :show] do
    resources :product_details, only: [:index, :show]
  end
  resources :users
  post "/login", to: "users#login"
end
