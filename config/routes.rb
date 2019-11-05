Rails.application.routes.draw do
  root "sessions#index"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  
  resources :exercises
  resources :workouts
  resources :workout_plans
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
