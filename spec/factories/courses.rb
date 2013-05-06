# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :course do
    title "MyString"
    description "MyText"
    length "MyString"
    email "MyString"
    instructor "MyString"
  end
end
