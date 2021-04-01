Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/stocks', to: 'stocks#index'
  post '/stocks', to: 'stocks#create'
  put '/stocks/:id', to: 'stocks#update'
  delete '/stocks/:id', to: 'stocks#destroy'
end
