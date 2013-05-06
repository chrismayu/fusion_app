FusionApp::Application.routes.draw do
  resources :attendances


  resources :youths


  resources :courses


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end