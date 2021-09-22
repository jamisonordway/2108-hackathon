Rails.application.routes.draw do
  get '/', to: 'login#show'

  get '/login', to: 'login#create'
  resources :dashboards, only: [:index]
  resources :lesson_dates, only: [:index, :show]
end
