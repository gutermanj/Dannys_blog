Rails.application.routes.draw do

  devise_for :users
  get 'contact/index'

  resources :posts

  resources :photos, only: [:new, :create, :index, :destroy]
  get 'posts/index'
  
  get 'posts/new'
  
  get 'posts/photos'
  
  
  
   get 'photos/index'
   
   get 'photos/about'
   
   get 'contact/index'

 
   root 'posts#index'


end