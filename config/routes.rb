Rails.application.routes.draw do
  devise_for :users
  root to: "pages#start"
  resources :pages, only: [:show]
end
