Rails.application.routes.draw do
  
  devise_for :users
  get '/posts/new' => 'posts#new'
  get '/posts/create' => 'posts#create'
  get 'posts/show/:post_id' => 'posts#show'
  get 'posts/index'
  
  
  
  get '/posts/create2/:post_id' => 'posts#create2'
  get 'posts/index2'
  
  
  
  get 'posts/index3'
  get '/posts/create3/:post2_id' => 'posts#create3'
  get '/posts/destroy3/:post3_id' => 'posts#destroy3'
  get 'posts/show3/:post4_id' => 'posts#show3'
  
  
  
  
  get 'posts/index4'
  get '/posts/show4/:post4_id' => 'posts#show4'
  get '/posts/create4/:post3_id' => 'posts#create4'
  
  get '/posts/add1/:post4_id' => 'posts#add1'
  get '/posts/add2/:post4_id' => 'posts#add2'
  get '/posts/add3/:post4_id' => 'posts#add3'
  get '/posts/add4/:post4_id' => 'posts#add4'
  get '/posts/add5/:post4_id' => 'posts#add5'
    
  root 'posts#main'
  get 'posts/main' => 'posts#main'
 
end
