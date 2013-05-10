class Course < ActiveRecord::Base
  attr_accessible :description, :email, :instructor_first_name, :instructor_last_name, :length, :title
  belongs_to :attendance
  
  
  validates :title, :presence => {:message => 'Course Title cannot be blank'}
  validates :description, :presence => {:message => 'Description cannot be blank'}
  validates :instructor_first_name, :presence => {:message => 'First Name cannot be blank'}    
  validates :instructor_last_name, :presence => {:message => 'Last Name cannot be blank'}
  validates :length, :presence => true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
   
  
  
  
  
end
