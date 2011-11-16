require 'spec_helper'

describe ResponsesController do
  describe "GET show" do
    it "assigns the requested response as @survey_response" do
      survey_response = FactoryGirl.create(:response)
      get :show, :id => survey_response.id
      assigns(:survey_response).should eq(survey_response)
    end
  end
end
