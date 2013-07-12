SorcercyTest::Application.routes.draw do
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  post "login" => "sessions#create"
  get "signup" => "users#new", :as => "signup"
  resources :users
  root :to => 'users#index'

end
