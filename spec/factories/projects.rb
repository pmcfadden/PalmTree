# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    project_name "My Project"
    contact_email "pmcfadde@thoughtworks.com"
    contact_name "Patrick McFadden"
  end
end
