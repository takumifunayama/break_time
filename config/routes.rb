Rails.application.routes.draw do
  root to: 'toppages#index'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: %i[index show new create]

  resources :posts, only: %i[create destroy]
end
