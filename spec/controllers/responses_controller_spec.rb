require 'spec_helper'

describe ResponsesController do
  def valid_attributes
    {
      :question_response => 'Red',
      :response_explanation => 'there is trouble',
      :question_id => 1
    }
  end
  describe "GET show" do
    it "assigns the requested response as @survey_response" do
      survey_response = Response.create! valid_attributes
      get :show, :id => survey_response.id
      assigns(:survey_response).should eq(survey_response)
    end
  end
end
