class CreateCredentials < ActiveRecord::Migration
  def change
    create_table :credentials do |t|

      t.string :name
      t.text :description
      t.string :username
      t.string :password
      t.string :enable_password

      t.timestamps
    end
  end
end
