# frozen_string_literal: true

Rails.application.routes.draw do
  mount Resque::Server.new, at: '/resque'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/stocks/:id', to: 'stocks#show'
  get '/stocks/:id/fetch', to: 'stocks#fetch'
  get '/stocks', to: 'stocks#index'
  post '/stocks', to: 'stocks#create'
  put '/stocks/:id', to: 'stocks#update'
  delete '/stocks/:id', to: 'stocks#destroy'

  require 'resque/scheduler'
  require 'resque/scheduler/server'
end
