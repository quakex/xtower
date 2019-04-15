Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/sign_up'
  get 'static_pages/sign_in'
end
