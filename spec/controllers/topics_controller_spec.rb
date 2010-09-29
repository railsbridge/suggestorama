require 'spec_helper'

describe TopicsController do
  describe "#index" do
    it "succeeds" do
      get :index
      response.should be_success
    end
    it "displays a list of topics"
  end
  describe "#new" do
    it "succeeds" do
      get :new
      response.should be_success
    end
  end

  describe "#create" do
    it "succeeds" do
      post :create
      response.should redirect_to '/topics'
    end
    it "creates a new topic" do
      Topic.count.should == 0
      post :create, 'topic' => {'name' => 'new topic 1', 'description' => 'new topic description'}
      Topic.count.should == 1
      Topic.first.name.should == "new topic 1"
    end
  end
end