Rails.application.routes.draw do
  devise_for :users
  root 'events#index'

  resources :events, only: [:new, :index, :show, :create, :destroy, :edit]

  resources :events do
    resources :categories
  end

end
