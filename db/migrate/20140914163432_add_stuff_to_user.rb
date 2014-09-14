class AddStuffToUser < ActiveRecord::Migration
  def change
    add_column :users, :login, :string
    add_column :users, :ldap_name, :string
    add_column :users, :ldap_phone, :string
  end
end
