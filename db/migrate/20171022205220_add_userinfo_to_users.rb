class AddUserinfoToUsers < ActiveRecord::Migration[5.2]
  def change

    add_column :phcaccountspro_users, :firstname, :string
    add_column :phcaccountspro_users, :lastname, :string
    add_column :phcaccountspro_users, :username, :string
    add_column :phcaccountspro_users, :org_id, :string

    add_index :phcaccountspro_users, :firstname
    add_index :phcaccountspro_users, :lastname
    add_index :phcaccountspro_users, :username, unique: true
    add_index :phcaccountspro_users, :org_id, unique: true

  end
end
