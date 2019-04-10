Phcaccounts::Engine.routes.draw do

    # Dashboard (Engine Root)
    get 'welcome_status_page', to: 'accounts/dashboard#welcome'
    
    # Administrative Routes
    get 'admin_users_all', to: 'admin/accounts#index'
    
    # User Payments & Subscriptions
    namespace :subscription do
        resources :carts
        resources :orders
        resources :order_tranactions
        resources :services
    end
    
    # Add Devise routes
    devise_for :users, class_name: "Phcaccounts::User", module: :devise
 
end
