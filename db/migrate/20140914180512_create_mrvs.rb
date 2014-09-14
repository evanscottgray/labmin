class CreateMrvs < ActiveRecord::Migration
  def change
    create_table :mrvs do |t|
      t.string :name
      t.text :description
      t.string :ip_address
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
