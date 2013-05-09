class AddCourseToAttendance < ActiveRecord::Migration
  def change
    add_column :attendances, :course_name, :string
    add_column :attendances, :youth_first_name, :string
    add_column :attendances, :youth_last_name, :string
  end
end
