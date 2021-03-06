Ticketee::Application.routes.draw do
  get "users/index"
  root "projects#index"

  get "/signin", to: "sessions#new"
  post "signin", to: "sessions#create"

  resources :projects do
    resources :tickets
  end

  namespace :admin do
    root :to => "base#index"
    resources :users
  end

  resources :users
end
