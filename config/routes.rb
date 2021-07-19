Rails.application.routes.draw do
  resources :events
  root to: 'homes#top'
  devise_for :users
  resources :users
  resources :campanies, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
