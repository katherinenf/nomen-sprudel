Rails.application.routes.draw do

  # resources :pages, only: [:show]
  # get "practice_set_up" => "pages#practice_set_up"
  # get "practice" => "pages#show"

  # BELOW WILL BE THE FINAL PATHS
  devise_for :users
  get "/home" => "pages#home"
  root to: "pages#start"
  resources :word_sets, only: [:index, :show]
  get "practice_set_up" => "word_sets#index"
  get "practice" => "word_sets#show"

end
