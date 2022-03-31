Rails.application.routes.draw do
  get 'home/index'

  match '/users', to: 'users#index', via: 'get'
  match '/users/:id', to: 'user#show',via: 'get'
  get 'show/:id' => 'user#show'



  resources :characters
  resources :users, :path_prefix => 'd', :only =>[:show]
  devise_for :user, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  authenticated :user do
    root to: 'home#index', as: :root_app
  end

  root to: 'home#index'


end
