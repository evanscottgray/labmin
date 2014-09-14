class CreateConsoleServerInterfaces < ActiveRecord::Migration
  def change
    create_table :console_server_interfaces do |t|
      t.integer :console_server_id
      t.string :name

      t.timestamps
    end
  end
end
