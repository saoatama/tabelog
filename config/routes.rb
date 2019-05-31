Rails.application.routes.draw do
  devise_for :users
  devise_for :admins, :controllers => {
    :sessions => 'admin/sessions', 
    :registration => 'admin/registrations'
  }
  
  namespace :admin do
    resources :restaurants
    resources :categories
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
