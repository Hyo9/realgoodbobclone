Rails.application.routes.draw do
  
  get '/posts/new' => 'posts#new'
  get '/posts/create' => 'posts#create'
  get 'posts/show/:post_id' => 'posts#show'
  get 'posts/index'
  
  
  
  get '/posts/create2/:post_id' => 'posts#create2'
  get 'posts/index2'
  
  
  
  get 'posts/index3'
  get '/posts/create3/:post2_id' => 'posts#create3'
  get '/posts/destroy3/:post3_id' => 'posts#destroy3'
  #get 'posts/show3/??????????' => 'posts#show'
  
  
  get 'posts/index4'
  get '/posts/create4/:post3_id' => 'posts#create4'
    
  root 'posts#main'

 
end
