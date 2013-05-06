class Course < ActiveRecord::Base
  attr_accessible :description, :instructor, :length, :thumb, :title
end
