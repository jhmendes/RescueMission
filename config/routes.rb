Rails.application.routes.draw do
  resources :questions do
    resources :answers, only: [:index, :new, :create]
  end

    resources :answers, only: [:show]

  root "questions#index"

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
  
end
