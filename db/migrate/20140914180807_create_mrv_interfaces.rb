class CreateMrvInterfaces < ActiveRecord::Migration
  def change
    create_table :mrv_interfaces do |t|
      t.string :name
      t.integer :mrv_id

      t.timestamps
    end
  end
end
