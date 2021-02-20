Rails.application.routes.draw do
  root to: 'hotels#index'
    resources :hotels, only: [ :create, :index, :show, :new ] do
      resources :apparels, only: [ :new, :create ]
  end
  resources :apparels, only: [ :destroy ]
end
