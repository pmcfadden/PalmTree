require 'spec_helper'

describe "questions/show.html.erb" do
  before(:each) do
    @question = assign(:question, stub_model(Question,
      :question_text => "Question Text",
      :survey_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Question Text/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
