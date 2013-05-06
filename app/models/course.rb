class Course < ActiveRecord::Base
  attr_accessible :description, :email, :instructor, :length, :title
end
