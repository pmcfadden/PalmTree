class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class Project < ActiveRecord::Base
  validates :project_name, :presence => true
  validates :contact_email, :presence => true, :email => true
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
#

