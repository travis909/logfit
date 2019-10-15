Rails.application.routes.draw do
  root 'users#index'

  resources :users, only: %i[index create]
  resources :workouts
  resources :exercises
  resources :sessions, only: [:create]

  get 'log_out' => 'sessions#destroy'
end
