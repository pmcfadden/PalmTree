require 'spec_helper'

describe TemplatesController do
  before(:each) do
    @template = FactoryGirl.build(:template)
  end

  describe "GET new" do
    before(:each) do
      get :new
    end

    it "should assign the new template as @template" do
      assigns(:template).should_not be_nil
    end
  end

  describe "GET show" do
    before(:each) do
      @template.save
    end

    it "should assign the existing template as @template" do
      get :show, :id => @template.id
      assigns(:template).should == @template
    end
  end

  describe "POST create" do
    it "should create template" do
      post :create, :template => FactoryGirl.attributes_for(:template)
      response.should redirect_to(assigns(:template))
    end
  end

  describe "POST apply" do
    before(:each) do
      @template.save
    end
    describe "without any Projects" do
      it "redirect to root" do
        post :apply, :id => @template.id
        response.should redirect_to(:root)
      end
    end

    describe "with one project" do
      before(:each) do
        FactoryGirl.create(:project)
      end

      it "should copy template as one of the projects surveys" do
        original_number = Project.first.surveys.count
        post :apply, :id => @template.id
        Project.first.surveys.count.should == original_number + 1
      end

      it "should save the date_of_survey from the template to the survey" do
        post :apply, :id => @template.id
        Project.first.surveys.first.date_of_survey.should == @template.date_of_survey
      end
    end

    describe "with multiple projects" do
      before(:each) do
        FactoryGirl.create(:project)
        FactoryGirl.create(:project)
      end

      it "should copy the template as a survey for each of the projects" do
        original_number = Survey.count
        post :apply, :id => @template.id
        Survey.count.should == original_number + Project.count
      end

      it "should save the date_of_survey from the template to the surveys" do
        post :apply, :id => @template.id
        Project.all.each do |project|
          project.surveys.first.date_of_survey.should == @template.date_of_survey
        end
      end
    end
  end
end
