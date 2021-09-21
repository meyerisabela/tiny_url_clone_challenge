Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :urls, only: :create
  get  '/:token', to: 'urls#redirect', as: :token_page
  get  '/:token/info', to: 'urls#show', as: :url_info
end
