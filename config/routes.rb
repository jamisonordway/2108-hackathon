Rails.application.routes.draw do
  get '/', to: 'dashboards#index'

  resources :mods, only: [] do
    resources :lesson_dates, only: [:new, :create]
  end

  resources :lesson_dates, only: [:index, :show]
  resources :students, only: [:show]
end
