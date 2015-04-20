class AttendController < ApplicationController
  before_action :authenticate_user!
  def create
    @attend = Attend.new
    @event = Event.find(params[:event_id])
    @attend.event = @event
    @attend.user = current_user

    @event.attend_terminator(current_user)
    @attend.save

    redirect_to event_path(@attend.event)
  end
end
