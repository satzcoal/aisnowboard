Rails.application.routes.draw do
  resources :rates
  resources :countries
  resources :brands
  resources :categories
  resources :products
end
