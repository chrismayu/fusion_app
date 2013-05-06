class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.string :length
      t.string :instructor

      t.timestamps
    end
  end
end
