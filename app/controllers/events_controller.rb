class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create

  end

  def show

  end

  def index

  end

  def destroy

  end

  protected
  def event_params
    params.require(:event).permit(:title, :details, :user_id, :category_id,
      :address, :address_2, :city, :state, :zip_code, :date, :time)
  end
end
