class Question < ActiveRecord::Base
  validates_presence_of :question_text, :survey_id
end
