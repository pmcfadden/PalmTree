# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :survey do
    date_of_survey "05/01/2011".to_date 
    project_id 1
  end
end
