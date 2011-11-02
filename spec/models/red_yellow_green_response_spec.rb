require 'spec_helper'

describe RedYellowGreenResponse do
  before(:each) do
    @response = FactoryGirl.build(:red_yellow_green_response)
  end

  it "should require an answer" do
    FactoryGirl.build(:red_yellow_green_response, :answer => nil).should_not be_valid
  end

  it "should not allow any response besides Red Yellow or Green" do
    @response.answer = "incorrect"
    @response.should_not be_valid

    @response.answer = "red"
    @response.should be_valid
    
    @response.answer = "yellow"
    @response.should be_valid
    
    @response.answer = "green"
    @response.should be_valid
  end

  it "should be associated with a question" do
    @response.question.should_not be_nil
  end
end
