Rails.application.routes.draw do
  root to: 'posts#index'  
  # get 'posts', to: 'posts#index'
  # get 'posts/new', to: 'posts#new'
  post 'posts', to: 'posts#create'
end
