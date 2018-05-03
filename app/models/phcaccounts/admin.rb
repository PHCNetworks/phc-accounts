module Phcaccounts
  class Admin < ApplicationRecord

    # Autogenerate Organization ID
    before_create :phc_devise_generate_org_id

    # User Gravatar Support
    include Gravtastic
    gravtastic

    # Include default devise modules. Others available are:
    # :confirmable, :lockable and :omniauthable
    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :timeoutable

    private

    # Autogenerate Organization ID
    def phc_devise_generate_org_id
      self.org_id = SecureRandom.hex(5)
    end

  end
end
