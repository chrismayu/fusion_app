class AddCourseToAttendance < ActiveRecord::Migration
  def change
    add_column :courses, :instructor_first_name, :string
    add_column :courses, :instructor_last_name, :string
  end
end
