require 'spec_helper'

describe Survey do
  it "should know the month it will be used for" do
    survey = Survey.new
    survey.date_of_survey = "01/05/2011".to_date
    survey.date_of_survey.month.should == 5
    survey.date_of_survey.day.should == 1
    survey.date_of_survey.year.should == 2011
  end

  it "should require a date_of_survey" do
    Survey.new.should_not be_valid
    FactoryGirl.build(:survey).should be_valid
  end
end
