Rails.application.routes.draw do
  # devise
  devise_for :users
  devise_for :admins, :controllers => {
    :sessions => 'admin/sessions', 
    :registration => 'admin/registrations'
  }
  
  #admin
  namespace :admin do
    resources :restaurants
    resources :categories
  end
  
  #public
  root to: 'public#home'
  get "list/:id" => "public#list_categories"
  post "list/:id" => "public#list_categories"
  get "list" => "public#list"
  post "list" => "public#list"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
