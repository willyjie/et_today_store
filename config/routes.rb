Rails.application.routes.draw do
  devise_for :administrators
  root to: "admin/orders#index"

  namespace :admin do
    resources :orders
  end
end
