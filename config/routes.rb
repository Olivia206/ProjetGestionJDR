Rails.application.routes.draw do
  resources :characters
  resources :users
  devise_for :user, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }

  root to: 'home#index'
end
