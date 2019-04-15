Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/sign_in'
  get 'sign_up', to: 'users#new'
  post 'sign_up', to: 'users#create'

  resources :users
end
