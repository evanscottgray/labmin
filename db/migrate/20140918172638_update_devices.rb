class UpdateDevices < ActiveRecord::Migration
  def change
    remove_column :devices, :model, :text
    add_column :devices, :base_configuration, :text
    add_column :devices, :credential_id, :integer
  end
end
