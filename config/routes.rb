Phcaccounts::Engine.routes.draw do

  # Dashboard (Engine Root)
  get 'welcome_status_page', to: 'modules/page#welcome'

  # Administrative Routes
  get 'admin_users_all', to: 'modules/admin#index'

  # Persons Contact Information
  namespace :admin do
    resources :users
  end

  # Add Devise routes
  devise_for :users, class_name: "Phcaccounts::User", module: :devise
  devise_for :admins, class_name: "Phcaccounts::Admin", module: :devise

end
