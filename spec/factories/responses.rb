# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :response do
    question_response "Red"
    response_explanation "We are really worried that scope is getting out of control"
    question_id 1
  end
end
