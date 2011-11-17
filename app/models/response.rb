class Response < ActiveRecord::Base
  validates :question_id, :presence => true
  belongs_to :question
  belongs_to :survey
end

# == Schema Information
#
# Table name: responses
#
#  id                   :integer         not null, primary key
#  question_response    :string(255)
#  response_explanation :text
#  question_id          :integer
#  created_at           :datetime
#  updated_at           :datetime
#

