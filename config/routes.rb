Phcaccounts::Engine.routes.draw do

  # Dashboard (Engine Root)
  root :to => 'modules/page#index'

  # Add Devise routes
  devise_for :users, class_name: "Phcaccounts::User", module: :devise
  devise_for :admins, class_name: "Phcaccounts::Admin", module: :devise

end
