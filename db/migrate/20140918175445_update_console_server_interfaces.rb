class UpdateConsoleServerInterfaces < ActiveRecord::Migration
  def change
    remove_column :console_server_interfaces, :name, :string
    add_column :console_server_interfaces, :number, :integer
  end
end
