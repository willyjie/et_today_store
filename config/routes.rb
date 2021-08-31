Rails.application.routes.draw do
  devise_for :administrators
  root to: "admin/orders#index"

  namespace :admin do
    resources :orders
    resources :suppliers, except: :show
  end
end
