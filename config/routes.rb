Rails.application.routes.draw do
  root to: "events#index"

  resources :maps, only: :index
  resource :calendar, only: [:show], controller: :calendar
  devise_for :users
  resources :events do
    resources :categories
    resources :likes
  end
end
