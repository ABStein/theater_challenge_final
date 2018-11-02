Rails.application.routes.draw do
  get '/' => 'movies#index'
  get '/movies' => 'movies#index'
  get '/movies/new' => 'movies#new'
  post '/movies' => 'movies#create'
  get '/movies/:id' => 'movies#show'
  get '/movies/:id/edit' => 'movies#edit'
  patch 'movies/:id' => 'movies#update'
  delete '/movies/:id' => 'movies#destroy'

  get '/tickets/new' => 'tickets#new'
  post '/tickets' => 'tickets#create'

  get '/showtimes/new' => 'showtimes#new'
  post '/showtimes' => 'showtimes#create'
end
