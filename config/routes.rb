Rails.application.routes.draw do
  devise_for :users
  root to: "pages#start"
  get "home" => "pages#home"
  get "practice_set_up" => "pages#practice-set-up"
  get "practice" => "pages#show"
  # resources :pages, only: [:show]

end
