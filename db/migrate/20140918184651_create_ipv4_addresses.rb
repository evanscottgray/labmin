class CreateIpv4Addresses < ActiveRecord::Migration
  def change
    create_table :ipv4_addresses do |t|
      t.string :address
      t.references :ipv4_addressable, polymorphic: true

      t.timestamps
    end
  end
end
