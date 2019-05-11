module Phcaccounts
    class ApplicationController < ActionController::Base

        # Devise Filter
        before_action :phc_accounts_permitted_parameters, if: :devise_controller?

        # Security Filters
        protect_from_forgery with: :exception

        # Load Requried Helper Files
        helper Phccorehelpers::Engine.helpers
        helper Phcmenus::Engine.helpers
        helper Phctitleseo::Engine.helpers
        helper Phcnotifi::Engine.helpers
        
        private

        # Whitelist Additional Fields
        def phc_accounts_permitted_parameters
          added_attrs = [:username, :firstname, :lastname, :email, :terms_of_service, :password, :password_confirmation, :remember_me]
          devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
          devise_parameter_sanitizer.permit :account_update, keys: added_attrs
        end

        # Redirect User to Welcome Screen After Signin
        def after_sign_in_path_for(resource)
          main_app.root_path
        end

    end
end
