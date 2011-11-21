require 'spec_helper'

describe SurveysController do
  before(:each) do
    @project = FactoryGirl.create(:project)
  end

  describe "GET new" do
    before(:each) do
      get :new, :project_id => @project.id
    end

    it "should be able to create a survey" do
      response.should be_success
    end

    it "should assign the project as @project" do
      assigns(:project).should == @project
    end

    it "should associate the new survey to the project" do
      assigns(:survey).project.should == @project
    end
  end

  describe "GET show" do
    it "assigns the requested survey as @survey" do
      survey = FactoryGirl.create(:survey)
      get :show, :id => survey.id, :project_id => @project.id
      assigns(:survey).should == survey
    end
  end

  describe "POST create" do
    before(:each) do
      post :create, :project_id => @project.id, :survey => {"date_of_survey(1i)" => "2001", "date_of_survey(2i)" => "12", "date_of_survey(3i)" => "1"}
    end

    it "should assign the project as @project" do
      assigns(:project).should == @project
    end

    it "should save project as an association to the survey" do
      assigns(:survey).project.should == @project
    end

    it "should redirect to project show page on success" do
      response.should redirect_to(@project)
    end

    it "should save the date on the survey" do
      assigns(:survey).date_of_survey.should == Date.civil(2001, 12, 1)
    end
  end

  describe 'unsuccessful create' do
    it "should render the new page on unsuccessful save" do
      Survey.any_instance.stub(:save).and_return(false)
      post :create, :project_id => @project.id, :survey => {"date_of_survey(1i)" => "2001", "date_of_survey(2i)" => "12", "date_of_survey(3i)" => "1"}
      response.should render_template(:new)
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
    it "assigns all responses as @responses" do
      stubbed_responses = [FactoryGirl.create(:response), FactoryGirl.create(:response)]
      survey = FactoryGirl.create(:survey)
      Survey.any_instance.stub(:responses).and_return(stubbed_responses)
      get :respond, :id => survey.id
      assigns(:responses).should eq(stubbed_responses)
    end
  end
end
