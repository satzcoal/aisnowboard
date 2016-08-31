Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :pictures
  resources :rates
  resources :countries
  resources :brands
  resources :categories do
    collection do
      get :nav_bar_index
    end
  end
  resources :products
end
