Rails.application.routes.draw do
  get '/', to: 'dashboards#index'

  resources :lesson_dates, only: [:index, :show]
  resources :students, only: [:show]
end
