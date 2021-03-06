Rails.application.routes.draw do
  get 'orderitems/index'
  get 'orderitems/show'
  get 'orderitems/new'
  get 'orderitems/edit'
  
  
  
  
  
  resources :orders do  
      resources:orderitems
    end
  
  
  
  
  
  
  devise_for :users do
      resources:orders
  end
  
  get '/checkout' => 'cart#createOrder'
  
  
  
  
  
  
  
  get 'cart/index'
  
  
  
  resources :items
  root 'static_pages#home'
  get '/help' =>'static_pages#help'
  get '/about' =>'static_pages#about'
  
  get '/login' =>'user#login'
  get '/logout' =>'user#logout'
  
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id' => 'cart#add'  # => is the same as using  , to
  get '/cart/remove/:id' => 'cart#remove'
  get '/cart' => 'cart#index'
  get '/cart/decrease/:id' => 'cart#decrease'
  
  #get 'static_pages/home'
 # get 'static_pages/help'
  #get 'static_pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
