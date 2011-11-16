# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    question_text "MyString"
    survey_id 1
    question_type "Rating"
  end
end
