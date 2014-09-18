class CreateTopologyDeviceRelations < ActiveRecord::Migration
  def change
    create_table :topology_device_relations do |t|
      t.belongs_to :device
      t.belongs_to :topology

      t.timestamps
    end
  end
end
