Rails.application.routes.draw do
  resources :employees

  get '/employee/:firstName', to: "employees#get_name"

end