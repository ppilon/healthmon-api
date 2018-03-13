# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :users, only: %i[index show update destroy]
  resources :health_snapshots, only: %i[create index show]
  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
