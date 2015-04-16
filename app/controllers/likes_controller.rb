class LikesController < ApplicationController
  before_action :authenticate_user!
  def create
    @like = Like.new
    @like.event = Event.find(params[:event_id])
    @like.user = current_user

    @like.save

    redirect_to event_path(@like.event)
  end

  def destroy

  end
end
