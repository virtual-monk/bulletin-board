Rails.application.routes.draw do
  devise_for :users
  root to: "events#index"
  get '/map', to:'events#map'
  get '/profile', to:'events#profile'
  resources :profile
  resource :calendar, only: [:show], controller: :calendar
  resources :map
  resources :events do
    resources :categories
    resources :attend
    resources :maybe_attend
  end
end
