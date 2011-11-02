require 'spec_helper'

describe Question do
  before(:each) do
    @question = Question.new
  end

  it "should require question text to be valid" do
    @question.should_not be_valid
    @question.question_text = "This is a question"
    @question.should be_valid
  end

end
