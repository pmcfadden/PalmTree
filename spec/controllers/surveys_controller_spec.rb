require 'spec_helper'

describe SurveysController do

  it "should be able to view all surveys" do
    get :index
    response.should be_success
  end

  it "should be able to create a survey" do
    get :new
    response.should be_success
  end
end
