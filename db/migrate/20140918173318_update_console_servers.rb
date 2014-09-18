class UpdateConsoleServers < ActiveRecord::Migration
  def change
    remove_column :console_servers, :ip_address, :string
    add_column :console_servers, :telnet_port_base, :integer
    add_column :console_servers, :ssh_port_base, :integer
    add_column :console_servers, :credential_id, :integer 
  end
end
