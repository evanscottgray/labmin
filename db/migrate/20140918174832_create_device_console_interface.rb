class CreateDeviceConsoleInterface < ActiveRecord::Migration
  def change
    create_table :device_console_interfaces do |t|
      t.string :name
      t.belongs_to :console_server_interface
      t.belongs_to :device
    end
  end
end
