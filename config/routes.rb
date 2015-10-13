Rails.application.routes.draw do
  root 'application#index'

  scope defaults: {format: :json} do
    resources :users, only: [:create]
  end
end
