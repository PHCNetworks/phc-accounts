Phcaccounts::Engine.routes.draw do

  # Dashboard (Engine Root)
  get 'welcome_status_page', to: 'accounts/dashboard#index'

  # Administrative Routes
  namespace :admin do
    resources :users
  end

  get 'admin_users_all', to: 'admin/accounts#index'

  # Add Devise routes
  devise_for :users, class_name: "Phcaccounts::User", module: :devise

end
