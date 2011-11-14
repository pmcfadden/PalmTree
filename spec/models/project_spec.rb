require 'spec_helper'

describe Project do
  before(:each) do
    @project = FactoryGirl.build(:project)
  end

  it "should require a name" do
    @project.project_name = nil
    @project.should_not be_valid
  end

  it "should require an email address" do
    @project.contact_email = nil
    @project.should_not be_valid
  end

  it "should require a correctly formatted email address" do
    @project.contact_email = "not the correct email format"
    @project.should_not be_valid

    @project.contact_email = "correct@format.com"
    @project.should be_valid
  end

  it "should require a contact name" do
    @project.contact_name = nil
    @project.should_not be_valid
  end
end

# == Schema Information
#
# Table name: projects
#
#  id            :integer         not null, primary key
#  project_name  :string(255)
#  contact_email :string(255)
#  contact_name  :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

