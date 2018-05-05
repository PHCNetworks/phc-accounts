Phcaccounts::Engine.routes.draw do

  # Dashboard (Engine Root)
  get 'welcome_status_page', to: 'site/pages#welcome'

  # Administrative Routes
  get 'admin_users_all', to: 'admin/user#index'

  # Persons Contact Information
  namespace :admin do
    resources :users
  end

  # Add Devise routes
  devise_for :users, class_name: "Phcaccounts::User", module: :devise
  devise_for :admins, class_name: "Phcaccounts::Admin", module: :devise

end
