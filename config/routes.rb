# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :users, only: %i[index show update destroy]
  resources :health_snapshots, except: %i[new edit]
  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  post '/upload' => 'health_snapshots#upload'
end
