Rails.application.routes.draw do
  get 'urls/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :urls, only: :create
end
