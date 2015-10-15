Rails.application.routes.draw do
  root 'application#index'

  scope defaults: {format: :json} do
    devise_for :users, skip: :all
    devise_scope :user do
      post '/users', to: 'users/registrations#create'
      post '/users/sign_in', to: 'users/sessions#create'
      delete '/users/sign_out', to: 'users/sessions#destroy'
    end

    resources :groups, only: [:index, :create]
  end
end
