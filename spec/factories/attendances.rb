# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :attendance do
    youth_id 1
    course_id 1
    attendance_date "2013-05-05"
  end
end
