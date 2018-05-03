require_dependency "phcaccounts/application_controller"

module Phcaccounts
  class Admin::UserController < ApplicationController

    def index
      @admin_users = User.all
    end

  end
end
