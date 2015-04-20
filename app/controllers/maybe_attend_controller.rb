class MaybeAttendController < ApplicationController
  before_action :authenticate_user!
  def create
    @maybe_attend = MaybeAttend.new
    @event = Event.find(params[:event_id])
    @maybe_attend.event = @event
    @maybe_attend.user = current_user

    @event.attend_terminator(current_user)
    @maybe_attend.save

    redirect_to event_path(@maybe_attend.event)
  end
end
