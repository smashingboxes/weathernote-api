Rails.application.routes.draw do
  get "/users/", to: "users#find_or_create"
  resources :notes, only: [ :create, :show ]
end
