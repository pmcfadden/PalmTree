class RedYellowGreenResponse < ActiveRecord::Base
  belongs_to :question
  validates_presence_of :answer, :question
  validates_inclusion_of :answer, :in => %W(red yellow green)
end
