require_dependency "phcaccounts/application_controller"

module Phcaccounts
  class Admin::UsersController < ApplicationController


    # GET /admin/users
    def index
      @admin_users = Phcaccounts::User.all
    end

    # GET /admin/users/1
    def show
      @admin_user = Phcaccounts::User.find(params[:id])
    end

    # GET /admin/users/new
    def new
      @admin_user = Admin::User.new
    end

    # GET /admin/users/1/edit
    def edit
    end

    # POST /admin/users
    def create
      @admin_user = Admin::User.new(admin_user_params)

      if @admin_user.save
        redirect_to @admin_user, notice: 'User was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /admin/users/1
    def update
      if @admin_user.update(admin_user_params)
        redirect_to @admin_user, notice: 'User was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /admin/users/1
    def destroy
      @admin_user.destroy
      redirect_to admin_users_url, notice: 'User was successfully destroyed.'
    end

  end
end
