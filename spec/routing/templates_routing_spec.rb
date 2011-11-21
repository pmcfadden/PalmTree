require 'spec_helper'

describe TemplatesController do
  it "should route to new template creation" do
    get("/templates/new").should route_to "templates#new"
  end

  it "should route to show a template" do
    get("/templates/1").should route_to "templates#show", :id => "1"
  end

  it "should route to create a template" do
    post("/templates").should route_to "templates#create"
  end

  it "should route to apply template" do
    post("/templates/1/apply").should route_to "templates#apply", :id => "1"
  end
end
