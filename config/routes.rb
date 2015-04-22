Rails.application.routes.draw do
  root to: "events#map"
  # get '/event/maps'
  get '/profile', to:'profile#show'
  resources :profile
  resource :calendar, only: [:show], controller: :calendar
  devise_for :users
  resources :events do
    resources :categories
    resources :attend
    resources :maybe_attend
  end
end
