Rails.application.routes.draw do
  root to: 'toppages#index'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  get 'logout', to: 'user_sessions#destroy'
  

  get 'signup', to: 'users#new'
  resources :users, only: %i[index show new create] do
    member do
      get :followings
      get :followers
    end
  end

  resources :posts, only: %i[create destroy]
  resources :relationships, only: %i[create destroy]
end
