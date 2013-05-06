FusionApp::Application.routes.draw do
  resources :attendances


  resources :youths


  resources :courses

  root :to => "attendances#index"
  authenticated :user do
    root :to => "attendances#index"
  end
 
  devise_for :users
  resources :users
end