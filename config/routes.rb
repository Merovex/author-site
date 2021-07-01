Rails.application.routes.draw do
  
  resources :subscriptions
  resources :praises
  resources :books
  resources :series
  devise_for :users
  get 'landing/index'
  resources :posts

  resources :pages
  get '/:slug' => "pages#show"
  
  root to: 'landing#index'
end
