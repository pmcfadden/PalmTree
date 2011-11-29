class Template < ActiveRecord::Base
  has_many :questions, :as => :questionable
end

# == Schema Information
#
# Table name: templates
#
#  id             :integer         not null, primary key
#  created_at     :datetime
#  updated_at     :datetime
#  date_of_survey :date
#

