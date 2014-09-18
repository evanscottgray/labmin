class UpdateMrvs < ActiveRecord::Migration
  def change
    remove_column :mrvs, :ip_address, :string
    remove_column :mrvs, :username, :string
    remove_column :mrvs, :password, :string
    add_column :mrvs, :credential_id, :integer
  end
end
