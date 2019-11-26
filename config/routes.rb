Rails.application.routes.draw do
  resources :subscriptions
  post '/podcastdata', to: 'podcasts#podcastdata'
  resources :podcasts
  resources :users
  get '/login', to: 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
