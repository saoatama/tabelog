Rails.application.routes.draw do
  devise_for :admins, only: [:session, :registration, :password] do
    get '/sign_in' => 'devise/session#new'
    post 'sign_in' => 'devise/sessions#create'
    delete '/sign_out' => 'devise/session#destroy'
    get '/sign_up' => 'devise/registration#new'
    get '/password' => 'devise/password#new'
  end
  
  namespace :admin do
    resources :restaurants
    resources :categories
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
