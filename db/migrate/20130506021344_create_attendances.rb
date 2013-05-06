class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :youth_id
      t.integer :course_id
      t.date :attendance_date

      t.timestamps
    end
  end
end
