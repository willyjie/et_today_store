Rails.application.routes.draw do
  root to: "admin/orders#index"

  namespace :admin do
    resources :orders
  end
end
