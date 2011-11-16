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

  describe "GET show" do
    it "assigns the requested survey as @survey" do
      survey = FactoryGirl.create(:survey)
      get :show, :id => survey.id
      assigns(:survey).should eq(survey)
    end
  end

  describe "GET respond" do
    it "assigns all questions as @questions" do
      stubbed_questions = [FactoryGirl.create(:question), FactoryGirl.create(:question)]
      survey = FactoryGirl.create(:survey)
      Survey.any_instance.stub(:questions).and_return(stubbed_questions)
      get :respond, :id => survey.id
      assigns(:questions).should eq(stubbed_questions)
    end
  end
end
