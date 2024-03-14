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

  post "masteries" => "masteries#updateAll"

  get "/profile" => "pages#profile"
  get "/high_scores" => "pages#high_scores"
  
  resources :masteries, only: [:index]
  resources :word_sets, only: [:index, :show, :new, :create] do
    resources :word, only: [:index, :new, :create, :edit]
  end

  get "word_set_create/:id", to: "word_sets#word_set_create", as: :word_set_create
  post "word_sets/:word_set_id/words/:word_id/add_word_to_set", to: "word_sets_words#create", as: :add_word_to_set
end
