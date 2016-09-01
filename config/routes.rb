Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :pictures
  resources :rates
  resources :countries
  resources :brands
  resources :categories
  resources :products

  resources :page, :only => [] do
    collection do
      get :top_nav
      get :filter_form
    end
  end

end
