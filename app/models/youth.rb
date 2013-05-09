class Youth < ActiveRecord::Base
  attr_accessible :birthday, :first_name, :last_name, :phone_number, :email
    belongs_to :attendance
end
