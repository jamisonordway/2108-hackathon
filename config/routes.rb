Rails.application.routes.draw do
  get root, to: 'dashboards#index'

  resources :lesson_dates, only: [:index, :show]
end
