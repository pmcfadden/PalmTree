class Project < ActiveRecord::Base
  validates :project_name, :contact_name, :presence => true
  validates :contact_email, :presence => true, :email => true
  belongs_to :account
  has_many :surveys
end


# == Schema Information
#
# Table name: projects
#
#  id            :integer         not null, primary key
#  project_name  :string(255)
#  contact_email :string(255)
#  contact_name  :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  account_id    :integer
#

