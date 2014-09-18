class CreateMrvMappings < ActiveRecord::Migration
  def change
    create_table :mrv_mappings do |t|
      t.belongs_to :topology
      t.belongs_to :a_side
      t.belongs_to :z_side
      t.timestamps
    end
  end
end
