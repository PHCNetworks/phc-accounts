class AddRoleToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :phcaccountspro_users, :role, :integer
  end
end
