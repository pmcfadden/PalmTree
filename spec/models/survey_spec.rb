require 'spec_helper'

describe Survey do
  before(:each) do
    @survey = FactoryGirl.build(:survey)
  end
  it "should know the month day and year it will be used for" do
    survey = Survey.new
    survey.date_of_survey = "01/05/2011".to_date
    survey.date_of_survey.month.should == 5
    survey.date_of_survey.day.should == 1
    survey.date_of_survey.year.should == 2011
  end

  it "should require a date_of_survey" do
    @survey.date_of_survey = nil
    @survey.should_not be_valid
    
    @survey.date_of_survey = "01/05/2011".to_date
    @survey.should be_valid
  end

  it "should have questions associated with it" do
    @survey.should respond_to(:questions)
  end

  it "should need to be associated with a project" do
    @survey.project_id = nil
    @survey.should_not be_valid
  end

  it "should associate to responses" do
    @survey.should respond_to(:responses)
  end
end


# == Schema Information
#
# Table name: surveys
#
#  id             :integer         not null, primary key
#  date_of_survey :date
#  created_at     :datetime
#  updated_at     :datetime
#  project_id     :integer
#

