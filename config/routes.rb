Rails.application.routes.draw do
  root to: "main#index"

  #get means rails needs to locate erb file 
  #to: defines the folder and erb file to use
  get "about", to: "about#index"

  get "password", to: "passwords#edit"
  patch "password", to: "passwords#updated"

  get "sign_up", to: "registrations#new" 
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  delete 'logout', to: 'sessions#destroy', as: :logout

  get "expenses", to: "expenses#new"
  get "expenses", to: "expenses#create"

end
