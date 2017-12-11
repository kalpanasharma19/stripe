Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :charges, only: [:new, :create]
  get 'thanks', to: 'charges#thanks', as: 'thanks'
  root to: 'posts#index'
end
