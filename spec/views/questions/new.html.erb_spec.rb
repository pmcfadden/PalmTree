require 'spec_helper'

describe "questions/new.html.erb" do
  before(:each) do
    assign(:question, stub_model(Question,
      :question_text => "MyString",
      :survey_id => 1
    ).as_new_record)
  end

  it "renders new question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => questions_path, :method => "post" do
      assert_select "input#question_question_text", :name => "question[question_text]"
      assert_select "input#question_survey_id", :name => "question[survey_id]"
    end
  end
end
