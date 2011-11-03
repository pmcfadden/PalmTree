class Survey < ActiveRecord::Base
  validates_presence_of :date_of_survey
end
