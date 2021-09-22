Rails.application.routes.draw do
  get root, to: 'dashboards#index'

  resources :dates, only: [:index, :show]
end
