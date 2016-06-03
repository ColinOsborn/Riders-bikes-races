Rails.application.routes.draw do
  resources :riders, only: [:index, :new, :create, :show]
end
