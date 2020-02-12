Rails.application.routes.draw do
  namespace :client do
    get '/destination' => 'destination#index'
    get '/destination/new' => 'destination#new'
    post '/destination' => 'destination#create'
    get '/destination/:id' => 'destination#show'
    get '/destination/:id/edit' => 'destination#edit'
    patch '/destination/:id' => 'destination#update'
    delete '/destination/:id' => 'destination#destroy'
  end
end
