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

  it "should be able to associate to a survey" do
    @question.questionable = FactoryGirl.create(:survey)
    @question.should be_valid
    @question.questionable.should_not be_nil
  end

  it "should be able to associate to a template" do
    @question.questionable = FactoryGirl.create(:template)
    @question.should be_valid
    @question.questionable.should_not be_nil
  end

  it "should require a questionable_id to be valid" do
    @question.questionable_id = nil
    @question.should_not be_valid

    @question.questionable_id = 1
    @question.should be_valid
  end

  it "should require a questionable_type to be valid" do
    @question.questionable_type = nil
    @question.should_not be_valid

    @question.questionable_type = "Template"
    @question.should be_valid
  end

  it "should require a question_type to be valid" do
    @question.question_type = nil
    @question.should_not be_valid
    
    @question.question_type = "Rating"
    @question.should be_valid
  end

  it "should have a response associated with it" do
    @question.should respond_to(:response)
  end

  describe "question_type" do
    it "should only allow Rating, Free, and Boolean" do
      @question.question_type = "not allowed"
      @question.should_not be_valid

      @question.question_type = "Rating"
      @question.should be_valid

      @question.question_type = "Free"
      @question.should be_valid

      @question.question_type = "Boolean"
      @question.should be_valid
    end
  end

end



# == Schema Information
#
# Table name: questions
#
#  id                :integer         not null, primary key
#  question_text     :string(255)
#  survey_id         :integer
#  created_at        :datetime
#  updated_at        :datetime
#  question_type     :string(255)     default("Rating")
#  questionable_id   :integer
#  questionable_type :string(255)
#

