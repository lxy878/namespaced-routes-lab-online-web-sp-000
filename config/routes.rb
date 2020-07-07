Rails.application.routes.draw do

  get 'preference/allow_create_artists:boolean'

  get 'preference/allow_create_songs:boolean'

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  namespace :admin do
    resources :preferences
  end
end
