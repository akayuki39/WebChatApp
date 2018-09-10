Rails.application.routes.draw do

  resource :session, only: [:new, :create, :destroy]

  resources :rooms do
    resources :messages
  end
end
