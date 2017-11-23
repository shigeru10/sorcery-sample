Rails.application.routes.draw do
  root to: 'users#index'
  resources :user_sessions
  resources :users do
    member do
      get :activate
    end
  end

  get 'login', to: 'user_sessions#create', as: :login
  post 'logout', to: 'user_sessions#destroy', as: :logout

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
