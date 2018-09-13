Rails.application.routes.draw do

  resource :session, only: [:new, :create, :destroy]

  resources :rooms do
    resources :messages
  end

  root "sessions#new"
  mount ActionCable.server => '/cable'
end
