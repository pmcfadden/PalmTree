class Question < ActiveRecord::Base
  validates_presence_of :question_text, :survey_id
  has_one :response
  belongs_to :survey
end

# == Schema Information
#
# Table name: questions
#
#  id            :integer         not null, primary key
#  question_text :string(255)
#  survey_id     :integer
#  created_at    :datetime
#  updated_at    :datetime
#

