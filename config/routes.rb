Rails.application.routes.draw do
  get '/', to: 'static_pages#index'

  get '/posts', to: 'posts#get'
  post '/posts', to: 'posts#create'
end
