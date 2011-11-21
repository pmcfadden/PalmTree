require 'spec_helper'

describe Template do
  before(:each) do
    @template = FactoryGirl.build(:template)
  end

  it "should return date_of_survey in attributes" do
    @template.attributes["date_of_survey"].should == "20110101".to_date
  end
end
