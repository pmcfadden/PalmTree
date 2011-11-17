require 'spec_helper'

describe Response do
  before(:each) do
    @response = FactoryGirl.build(:response)
  end
  it "should be associated with a question" do
    @response.question_id = nil
    @response.should_not be_valid
    @response.should respond_to(:question)
  end

  it "should be associated with a survey" do
    @response.should respond_to(:survey)
  end
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

