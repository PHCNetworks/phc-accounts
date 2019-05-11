class AddTermsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :phcaccounts_users, :terms_of_service, :boolean
  end
end
