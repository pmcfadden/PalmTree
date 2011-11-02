FactoryGirl.define do
  factory :red_yellow_green_response do
    answer "red"
    association :question, :factory => :question
  end
end
