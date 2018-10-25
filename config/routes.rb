Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :pets, only: [:index, :update, :create]
      resources :users, only: [:index, :create, :show, :update]
      resources :wishlists, only: [:index, :create, :update]
    end
  end
end