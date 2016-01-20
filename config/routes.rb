Rails.application.routes.draw do

  get 'contact/index'

  resources :posts
  get 'posts/index'
  
  get 'posts/new'
  
  get 'posts/photos'
  
  
  
   get 'photos/index'
   
   get 'photos/about'
   
   get 'contact/index'

 
   root 'posts#index'


end