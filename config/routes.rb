Rails.application.routes.draw do
  namespace :admin do
  get 'home/index'
  end

  devise_for :users
  namespace :admin do
  get 'screen_operator/index'
  end

  resources :business_types
  root to: 'home#index'

  namespace :operator do
    resources :registers, only: [:new, :create, :show]
  end

end
