Rails.application.routes.draw do
  resources :viri, only: :show do
    resources :hosts, only: [:new, :create]
  end
  resources :hosts, only: :destroy
end
