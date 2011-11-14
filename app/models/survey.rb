class Survey < ActiveRecord::Base
  validates_presence_of :date_of_survey
  has_many :questions
end
