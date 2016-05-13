Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  # Admin
  namespace :admin do
    root to: 'home#index'
    scope 'screen_operator' do
      get '/', to: 'screen_operator#index', as: :screen_operators
      get '/:id', to: 'screen_operator#show', as: :screen_operator
      get 'approve/:id', to: 'screen_operator#approve', as: :screen_operator_approve
      get 'disapprove/:id', to: 'screen_operator#disapprove', as: :screen_operator_disapprove
    end
  end
  scope 'admin' do
    resources :business_types
  end
  # Operator
  namespace :operator do
    root to: 'home#index'
    resources :registers, only: [:new, :create, :show]
  end

end
