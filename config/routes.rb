Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :tracks
  resources :track_ranks
  resources :genres
  resources :albums
  resources :author_profiles
  resources :locations
  resources :users
  resources :feeds
  resources :icons
  resources :playlists
  resources :feed_tracks
  resources :playlist_tracks
  resources :profile_tracks
  resources :liked_tracks
  resources :badges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
        end
  end
end
