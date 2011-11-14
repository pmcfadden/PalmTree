require 'spec_helper'

describe Question do

  before(:each) do
    @question = FactoryGirl.build(:question)
  end

  it "should require question_text to be valid" do
    @question.question_text = nil
    @question.should_not be_valid

    @question.question_text = "A brand new question"
    @question.should be_valid
  end

  it "should require a survey_id to be valid" do
    @question.survey_id = nil
    @question.should_not be_valid

    @question.survey_id = 1
    @question.should be_valid
  end
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

