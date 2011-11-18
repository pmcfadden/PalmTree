# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :account do
    account_name "MyAccount"
    contact_email "pemcfadden@gmail.com"
    contact_name "Patrick Account"
  end
end
