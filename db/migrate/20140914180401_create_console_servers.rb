class CreateConsoleServers < ActiveRecord::Migration
  def change
    create_table :console_servers do |t|
      t.string :name
      t.text :description
      t.string :ip_address

      t.timestamps
    end
  end
end
