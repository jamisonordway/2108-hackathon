Rails.application.routes.draw do
  get '/', to: 'login#show'

  resources :dashboards, only: [:index]
  resources :lesson_dates, only: [:index, :show]
end
