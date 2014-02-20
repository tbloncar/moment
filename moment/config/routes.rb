Moment::Application.routes.draw do
  
  root "pages#index"

  resources :streams, only: :index

  get "/sign-in" => "sessions#new", as: :new_session
  post "/sessions" => "sessions#create", as: :sessions
  delete "/sign-out" => "sessions#destroy", as: :session

  get "/register" => "users#new", as: :new_user
  post "/users" => "users#create", as: :users
  get "/:path" => "users#show", as: :user

  get "/uploads/new" => "uploads#new", as: :new_upload
  post "/uploads" => "uploads#create", as: :uploads
  get "/:path/uploads/:upload_id" => "uploads#show", as: :upload

  get "/tags/:name" => "tags#show", as: :tag
end
