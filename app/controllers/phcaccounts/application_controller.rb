module Phcaccounts
  class ApplicationController < ActionController::Base

    # Devise Filter
    before_action :phc_devise_permitted_parameters, if: :devise_controller?

    # Filter and Security
    protect_from_forgery with: :exception

    protected

    #
    def phc_devise_permitted_parameters
      added_attrs = [:username, :firstname, :lastname, :email, :password, :password_confirmation, :remember_me]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end

    # Load Helpers & Load Helpers to Mainapp
    helper Phctitleseo::Engine.helpers
    helper Phcnotifi::Engine.helpers

    # Redirect User to Welcome Screen After Signin
    def after_sign_in_path_for(resource)
      phcaccounts.user_status_page_path
    end

  end
end
