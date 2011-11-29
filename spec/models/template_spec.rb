require 'spec_helper'

describe Template do
  before(:each) do
    @template = FactoryGirl.build(:template)
  end

  it "should return date_of_survey in attributes" do
    @template.attributes["date_of_survey"].should == "20110101".to_date
  end

  it "should be associated with a questionable" do
    @template.should respond_to(:questions)
  end
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

