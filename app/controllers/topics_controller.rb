class TopicsController < ApplicationController

  def index
    
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.create!(params[:topic])
    redirect_to '/topics'
  end
end