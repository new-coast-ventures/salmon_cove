Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :leads
  get 'landings/index'
  root 'landings#index'
end
