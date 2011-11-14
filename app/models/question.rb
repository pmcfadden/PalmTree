class Question < ActiveRecord::Base
  validates_presence_of :question_text, :survey_id
  belongs_to :surveys
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

