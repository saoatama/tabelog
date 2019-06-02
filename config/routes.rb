Rails.application.routes.draw do
  
  # devise
  devise_for :users, :controllers => {
    :registrations => 'user/registrations',
    :sessions => 'user/sessions', 
    :passwords => 'user/passwords'
  }
  namespace :user do
    get "user/home" => "user#home"
  end
  
  devise_for :admins, :controllers => {
    :sessions => 'admin/sessions', 
    :registrations => 'admin/registrations'
  }
  
  #admin
  namespace :admin do
    resources :restaurants
    resources :categories
    resources :categories_restaurants
  end
  
  #public
  root to: 'public#home'
  get "list/:id" => "public#list_categories"
  post "list/:id" => "public#list_categories"
  get "list" => "public#list"
  post "list" => "public#list"
  get "show/:id" => "public#show"
  get "show/:id/menu" => "public#show_menu"
  get "show/:id/pictures" => "public#show_pictures"
  get "show/:id/comments" => "public#show_comments"
  get "show/:id/map" => "public#show_map"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
