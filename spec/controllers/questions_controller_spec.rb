require 'spec_helper'

describe QuestionsController do

  # This should return the minimal set of attributes required to create a valid
  # Question. As you add validations to Question, be sure to
  # update the return value of this method accordingly.

  describe "GET index" do
    it "assigns all questions as @questions" do
      question = FactoryGirl.create(:question)
      get :index
      assigns(:questions).should eq([question])
    end
  end

  describe "GET show" do
    it "assigns the requested question as @question" do
      question = FactoryGirl.create(:question)
      get :show, :id => question.id
      assigns(:question).should eq(question)
    end
  end

  describe "GET new" do
    it "assigns a new question as @question" do
      get :new
      assigns(:question).should be_a_new(Question)
    end
  end

  describe "GET edit" do
    it "assigns the requested question as @question" do
      question = FactoryGirl.create(:question)
      get :edit, :id => question.id
      assigns(:question).should eq(question)
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested question" do
        question = FactoryGirl.create(:question)
        # Assuming there are no other questions in the database, this
        # specifies that the Question created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Question.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => question.id, :question => {'these' => 'params'}
      end

      it "assigns the requested question as @question" do
        question = FactoryGirl.create(:question)
        put :update, :id => question.id, :question => FactoryGirl.build(:question)
        assigns(:question).should eq(question)
      end

      it "redirects to the question" do
        question = FactoryGirl.create(:question)
        put :update, :id => question.id, :question => FactoryGirl.build(:question)
        response.should redirect_to(question)
      end
    end

    describe "with invalid params" do
      it "assigns the question as @question" do
        question = FactoryGirl.create(:question)
        # Trigger the behavior that occurs when invalid params are submitted
        Question.any_instance.stub(:save).and_return(false)
        put :update, :id => question.id, :question => {}
        assigns(:question).should eq(question)
      end

      it "re-renders the 'edit' template" do
        question = FactoryGirl.create(:question)
        # Trigger the behavior that occurs when invalid params are submitted
        Question.any_instance.stub(:save).and_return(false)
        put :update, :id => question.id, :question => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested question" do
      question = FactoryGirl.create(:question)
      expect {
        delete :destroy, :id => question.id
      }.to change(Question, :count).by(-1)
    end

    it "redirects to the questions list" do
      question = FactoryGirl.create(:question)
      delete :destroy, :id => question.id
      response.should redirect_to(questions_url)
    end
  end

end
