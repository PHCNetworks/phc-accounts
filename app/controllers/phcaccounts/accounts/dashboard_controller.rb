require_dependency "phcaccounts/application_controller"

module Phcaccounts
  class Accounts::DashboardController < ApplicationController

    # Security & Custom Layout Filters
    before_action :phcaccounts_authentication_filter!

    # Index Dashboard
    def index
    end

    # Welcome After Login
    def welcome
    end

  end
end
