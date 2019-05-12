require_dependency "phcaccounts/application_controller"

module Phcaccounts
  class Accounts::DashboardController < ApplicationController

    # Include Core Helpers, Security & Action Filters
    include Phccorehelpers::PhcpluginsproHelper
    before_action :authenticate_user!

    # Index Dashboard
    def index
    end

  end
end
