Rails.application.routes.draw do
  get '/', to: 'login#show'

  get '/login', to: 'login#create'
  resources :meetings, only: [:show]
  resources :dashboards, only: [:index]
  resources :lesson_dates, only: [:index, :show]
  resources :students, only: [:show]
end
