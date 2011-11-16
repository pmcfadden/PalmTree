class SurveyResponse < ActiveRecord::Base
  belongs_to :survey
end

# == Schema Information
#
# Table name: survey_responses
#
#  id          :integer         not null, primary key
#  survey_id   :integer
#  response_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

