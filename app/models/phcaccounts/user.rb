module Phcaccounts
  class User < ApplicationRecord

    # Autogenerate Organization ID
    before_create :phc_devise_generate_org_id

    # User Gravatar Support
    include Gravtastic
    gravtastic

    # Add Users Roles
    enum role: [:user, :editor, :admin]
    after_initialize :phc_set_default_role

    # Include default devise modules. Others available are:
    # :confirmable, :lockable and :omniauthable
    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :timeoutable

    private

    # Autogenerate User Organization ID
    def phc_devise_generate_org_id
      self.org_id = SecureRandom.hex(5)
    end

    # First Signup Admin and Rest Default to User
    def phc_set_default_role
      if User.all.count < 1
        self.role ||= :admin
      else
        self.role ||= :user
      end
    end

  end
end
