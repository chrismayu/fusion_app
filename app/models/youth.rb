class Youth < ActiveRecord::Base
  attr_accessible :birthday, :first_name, :last_name, :phone_number, :email
    belongs_to :attendance
    
    
    validates :birthday, :presence => {:message => 'Birthday cannot be blank'}
    validates :first_name, :presence => {:message => 'First Name cannot be blank'}
      validates :last_name, :presence => {:message => 'Last Name cannot be blank'}
    validates_formatting_of :phone_number, :using => :us_phone
    validates_uniqueness_of :email 
     validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    
    
    
end
