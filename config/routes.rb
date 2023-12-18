Rails.application.routes.draw do
  get '/', to: 'static_pages#index'

  post '/posts', to: 'posts#create'
end
