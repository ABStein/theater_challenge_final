Rails.application.routes.draw do
  get '/' => 'movies#index'
  get '/movies' => 'movies#index'
  get '/movies/new' => 'movies#new'
  post '/movies' => 'movies#create'
  get '/movies/:id' => 'movies#show'
  get '/movies/:id/edit' => 'movies#edit'
  patch '/movies/:id' => 'movies#update'
  delete '/movies/:id' => 'movies#destroy'

  get '/all_tickets' => 'tickets#index'
  get '/tickets/new' => 'tickets#new'
  post '/tickets' => 'tickets#create'

  get '/showtimes/new' => 'showtimes#new'
  post '/showtimes' => 'showtimes#create'
  get '/showtimes/:id/edit' => 'movies#edit'
  patch '/showtimes/:id' => 'movies#update'

  get '/theaters/new' => 'theaters#new'
  post '/theaters' => 'theaters#create'
  get '/theaters/:id/edit' => 'movies#edit'
  patch '/theaters/:id' => 'movies#update'
end
