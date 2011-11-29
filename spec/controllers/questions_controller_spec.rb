require 'spec_helper'

describe QuestionsController do
  before(:each) do
    @template = FactoryGirl.create(:template)
  end
  describe "GET index" do
    it "assigns all questions for a given template as @questions" do
      @template.questions.create(FactoryGirl.attributes_for(:question))
      get :index, {:template_id=> @template.id}
      assigns(:questions).should == @template.questions
    end
  end

  describe "GET show" do
    it "assigns the requested question as @question" do
      question = FactoryGirl.create(:question)
      get :show, {:id => question.id, :template_id => @template.id}
      assigns(:question).should eq(question)
    end
  end

  describe "POST create" do
    it "should create new question" do
      post :create, {:question => FactoryGirl.attributes_for(:question), :template_id => @template.id}
      response.should redirect_to "/templates/1"
    end
  end

  describe "GET new" do
    it "assigns a new question as @question" do
      get :new, :template_id => @template.id
      assigns(:question).should be_a_new(Question)
    end
  end

  describe "GET edit" do
    it "assigns the requested question as @question" do
      question = FactoryGirl.create(:question)
      get :edit, :id => question.id, :template_id => @template.id
      assigns(:question).should eq(question)
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested question" do
      question = FactoryGirl.create(:question)
      expect {
        delete :destroy, :id => question.id, :template_id => @template.id
      }.to change(Question, :count).by(-1)
    end

    it "redirects to the questions list" do
      question = FactoryGirl.create(:question)
      delete :destroy, :id => question.id, :template_id => @template.id
      response.should redirect_to(template_questions_url)
    end
  end
end
