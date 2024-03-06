Rails.application.routes.draw do
  devise_for :users
  root to: "pages#start"

  resources :pages, only: [:show]

  get "home" => "pages#home"
  get "practice_set_up" => "pages#practice_set_up"
  get "practice" => "pages#show"

end
