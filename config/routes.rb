Rails.application.routes.draw do
  resource :calendar, only: [:show], controller: :calendar
  root to: "calendar#show"

  devise_for :users

  resources :maps

  resources :events

  resources :events do
    resources :categories
  end
end
