Rails.application.routes.draw do
  get '/', to: 'static_pages#index'

  get '/posts', to: 'posts#list_posts'
  post '/posts', to: 'posts#create'
end
