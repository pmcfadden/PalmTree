require 'spec_helper'

describe AccountsController do
  describe "GET index" do
    it "assigns all accounts to @accounts" do
      account = FactoryGirl.create(:account)
      get :index
      assigns(:accounts).should eq([account])
    end
  end

  describe "GET show" do
    it "assigns requested account as @account" do
      account = FactoryGirl.create(:account)
      get :show, :id => account.id
      assigns(:account).should eq(account)
    end
  end
end
