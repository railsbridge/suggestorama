class VotesController < ApplicationController
  def create
    @topic = Topic.find(params[:topic_id])
    @vote = @topic.votes.create!

    flash[:notice] = "you voted for #{@vote.topic.title}"
    redirect_to(topics_path)
  end
end
