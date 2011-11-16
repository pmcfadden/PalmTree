require 'spec_helper'

describe ProjectsController do
  def valid_attributes
    {
      :project_name => "My Project",
      :contact_email => "pat@example.com",
      :contact_name => "patrick"
    }
  end

  describe "GET index" do
    it "assigns all projects as @projects" do
      project = FactoryGirl.create(:project)
      get :index
      assigns(:projects).should eq([project])
    end
  end

  describe "GET show" do
    it "assigns the requested project as @project" do
      project = FactoryGirl.create(:project)
      get :show, :id => project.id
      assigns(:project).should eq(project)
    end
  end

  describe "GET new" do
    it "assigns a new project as @project" do
      get :new
      assigns(:project).should be_a_new(Project)
    end
  end
  
  describe "POST create" do
    describe "with valid params" do
      it "creates a new Project" do
        expect {
          post :create, :project => valid_attributes
        }.to change(Project, :count).by(1)
      end
    end

    describe "with invalid params" do
      it "should stay on the create a new project page" do
        Project.any_instance.stub(:save).and_return(false)
        post :create, :project => valid_attributes
        response.should render_template("new")
      end
    end
  end
end
