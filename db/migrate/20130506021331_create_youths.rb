class CreateYouths < ActiveRecord::Migration
  def change
    create_table :youths do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email,              :null => false, :default => ""
      t.date :birthday

      t.timestamps
    end
    add_index :youths, :email,                :unique => true
  end
end
