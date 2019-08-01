Rails.application.routes.draw do
  resources :users

  get '/foo/:bar', to: 'foo#show'
end
