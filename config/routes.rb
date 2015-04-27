Rails.application.routes.draw do
  root to: "events#index"
  get '/map', to:'events#map'
  get '/profile', to:'events#profile'
  resources :profile
  resource :calendar, only: [:show], controller: :calendar
  devise_for :users
  resources :map
  resources :events do
    resources :categories
    resources :attend
    resources :maybe_attend
  end
end
