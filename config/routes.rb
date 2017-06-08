Rails.application.routes.draw do
  resources :questions do
    resources :answers, only: [:index, :new, :create]
  end

  root "questions#index"
end
