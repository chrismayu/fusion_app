FusionApp::Application.routes.draw do
  resources :attendances


  resources :youths



  get "attendances/welcome"

  root :to => "attendances#index"
  
  resources :courses


  authenticated :user do
  root :to => "attendances#index"
  end
 
  devise_for :users
  resources :users
end