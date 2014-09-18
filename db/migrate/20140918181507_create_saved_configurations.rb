class CreateSavedConfigurations < ActiveRecord::Migration
  def change
    create_table :saved_configurations do |t|
      t.text :content
      t.belongs_to :reservation
      t.belongs_to :device
      t.timestamps
    end
  end
end
