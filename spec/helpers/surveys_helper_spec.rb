require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the SurveyHelper. For example:
#
# describe SurveyHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe SurveysHelper do
  describe "format month and year" do
    it "should format the survey date to only be a month and year" do
      survey = Survey.new
      survey.date_of_survey = "01/05/2011"
      helper.format_month_and_year(survey).should == "May 2011"
    end
  end
end
