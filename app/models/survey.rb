class Survey < ActiveRecord::Base
  validates_presence_of :date_of_survey
  has_many :questions
end

# == Schema Information
#
# Table name: surveys
#
#  id             :integer         not null, primary key
#  date_of_survey :date
#  created_at     :datetime
#  updated_at     :datetime
#

