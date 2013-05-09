class Attendance < ActiveRecord::Base
  attr_accessible :attendance_date, :course_id, :youth_id
  has_many :courses, :primary_key => "course_id", :foreign_key => "id"
  has_many :youths, :primary_key => "youth_id", :foreign_key => "id"


end
