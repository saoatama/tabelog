Rails.application.routes.draw do
  namespace :admin do
    resources :restaurants
    resources :categories
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
