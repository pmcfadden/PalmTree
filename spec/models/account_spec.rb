require 'spec_helper'

describe Account do
  before(:each) do
    @account = FactoryGirl.build(:account)
  end

  it "should be associated with projects" do
    @account.should respond_to(:projects)
  end

  describe "contact email" do
    it "should be required" do
      @account.contact_email = nil
      @account.should_not be_valid
    end

    it "should have to be in the correct format" do
      @account.contact_email = "not correctly formatted"
      @account.should_not be_valid

      @account.contact_email = "correct@format.com"
      @account.should be_valid
    end
  end

  describe "contact name" do
    it "should be required" do
      @account.contact_name = nil
      @account.should_not be_valid
    end
  end

  describe "account_name" do
    it "should be required" do
      @account.account_name = nil
      @account.should_not be_valid
    end
  end
end

# == Schema Information
#
# Table name: accounts
#
#  id              :integer         not null, primary key
#  account_name    :string(255)
#  account_contact :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

