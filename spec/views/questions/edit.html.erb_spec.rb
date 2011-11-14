require 'spec_helper'

describe "questions/edit.html.erb" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :question_text => "MyString",
      :survey_id => 1
    ))
  end

  it "renders the edit question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => questions_path(@question), :method => "post" do
      assert_select "input#question_question_text", :name => "question[question_text]"
      assert_select "input#question_survey_id", :name => "question[survey_id]"
    end
  end
end
