class CreateDeviceInterfaces < ActiveRecord::Migration
  def change
    create_table :device_interfaces do |t|
      t.string :name
      t.integer :mrv_interface_id
      t.integer :device_id

      t.timestamps
    end
  end
end
