Rails.application.routes.draw do

get '/' => 'beers#index'

  namespace :api do
    namespace :v1 do
      get '/beers' => 'beers#index'
      post '/beers' => 'beers#create'
      patch '/beers/:id' => 'beers#update'
      get '/beers/:id' => 'beers#show'
      delete '/beers/:id' => 'beers#destroy'
    end

    namespace :v2 do
      get '/beers' => 'beers#index'
      post '/beers' => 'beers#create'
      patch '/beers/:id' => 'beers#update'
      get '/beers/:id' => 'beers#show'
      delete '/beers/:id' => 'beers#destroy'
    end
  end
end
