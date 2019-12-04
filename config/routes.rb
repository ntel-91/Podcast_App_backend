Rails.application.routes.draw do
  resources :episodes
  resources :bookmarks
  resources :subscriptions
  post '/episodebookmarks', to: 'bookmarks#episodebookmarks'
  post '/podcastdata', to: 'podcasts#podcastdata'
  resources :podcasts
  resources :users
  post '/login', to: 'sessions#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
