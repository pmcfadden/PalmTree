class Account < ActiveRecord::Base
  validates :contact_email, :presence => true, :email => true
  validates :contact_name, :account_name, :presence => true
  has_many :projects
end

# == Schema Information
#
# Table name: accounts
#
#  id              :integer         not null, primary key
#  account_name    :string(255)
#  account_contact :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

