Rails.application.routes.draw do
  resources :leads
  get 'landings/index'
  root 'landings#index'
end
