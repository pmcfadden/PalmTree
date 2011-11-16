require 'spec_helper'

describe SurveyResponse do
  it "should be associated to a survey" do
    FactoryGirl.build(:survey_response).should respond_to(:survey)
  end
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

