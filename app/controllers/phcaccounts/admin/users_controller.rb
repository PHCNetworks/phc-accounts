require_dependency "phcaccounts/application_controller"

module Phcaccounts
  class Admin::UsersController < ApplicationController

    # Include Core Helpers, Security & Action Filters
    include Phccorehelpers::PhcpluginsHelper
    before_action :authenticate_user!
    before_action :phc_accounts_admin_only

    # INDEX
    def index
      @admin_users = Phcaccounts::User.all
    end

    # DETAILS
    def show
    end

    # NEW
    def new
      @admin_user = Admin::User.new
    end

    # GET /admin/users/1/edit
   def edit
     @admin_user = Phcaccounts::User.find(params[:id])
   end

    # POST /admin/users
    def create
      @admin_user = Phcaccounts::User.find(params[:id])
      if @admin_user.save
        redirect_to admin_users_path, notice: 'User information was successfully created.'
      else
        render :new
      end
    end

    # UPDATE
   def update
     @admin_user = Phcaccounts::User.find(params[:id])
     if @admin_user.update
        redirect_to admin_users_path, notice: 'User information was successfully updated.'
     else
       render 'edit'
     end
   end

    # DELETE /admin/users/1
    def destroy
      @admin_user = Phcaccounts::User.find(params[:id])
      @admin_user.destroy
      redirect_to admin_users_path, notice: 'User information was successfully delted.'
    end

    private

    def update_resource(resource, params)
      resource.update_without_password(params)
    end

  end
end
