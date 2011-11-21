require 'spec_helper'

describe SurveysController do
  it "should route to surveys new action for a project" do
    get("/projects/1/surveys/new").should route_to("surveys#new", :project_id => "1")
  end
end
