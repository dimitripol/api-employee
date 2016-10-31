Rails.application.routes.draw do

  get '/employee/:firstName', to: "employees#get_name"
  post 'user_token' => 'user_token#create'
  
  resources :employees

end