require_dependency "phcaccounts/application_controller"

module Phcaccounts
  class Modules::AdminController < ApplicationController

    def index
      @admin_users = Phcaccounts::User.all
    end

    def show
      @admin_user = Phcaccounts::User.find(params[:id])
    end

    def new
      @admin_user = Admin::User.new
    end

    def edit
    end

    def create
      @admin_user = Admin::User.new(admin_user_params)
      if @admin_user.save
        redirect_to @admin_user, notice: 'User was successfully created.'
      else
        render :new
      end
    end

    def update
      if @admin_user.update(admin_user_params)
        redirect_to @admin_user, notice: 'User was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @admin_user.destroy
      redirect_to admin_users_url, notice: 'User was successfully destroyed.'
    end

  end
end
