Phcaccounts::Engine.routes.draw do

  # Dashboard (Engine Root)
  get 'user_status_page', to: 'site/pages#welcome'

  # Add Devise routes
  devise_for :users, class_name: "Phcaccounts::User", module: :devise
  devise_for :admins, class_name: "Phcaccounts::Admin", module: :devise

end
