class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.text :description
      t.integer :user_id
      t.integer :topology_id
      t.datetime :start_datetime
      t.datetime :end_datetime

      t.timestamps
    end
  end
end
