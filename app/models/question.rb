class Question < ActiveRecord::Base
  has_many :red_yellow_green_responses
  validates_presence_of :question_text
end
