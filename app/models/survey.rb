class Survey < ActiveRecord::Base
  validates_presence_of :date_of_survey, :project_id
  has_many :questions, :as => :questionable
  has_many :responses, :through =>:questions
  belongs_to :project
end


# == Schema Information
#
# Table name: surveys
#
#  id             :integer         not null, primary key
#  date_of_survey :date
#  created_at     :datetime
#  updated_at     :datetime
#  project_id     :integer
#

