class Attendance < ActiveRecord::Base
  attr_accessible :attendance_date, :course_id, :youth_id
end
