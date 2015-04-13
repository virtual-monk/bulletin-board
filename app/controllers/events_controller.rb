class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def show
    @event = Event.find(params[:id])
  end

  def index
    @events = Event.page(params[:page]).order(:title)
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user

    if @event.save
      flash[:notice] = "Event Saved"
      redirect_to event_path(@event)
    else
      flash[:notice] = "Invalid Input"
      render :new
    end
  end

  def edit
    @event = current_user.events.find(params[:id])
  end

  def update
    @event = current_user.events.find(params[:id])

    if @event.update(event_params)
      flash[:notice] = "Event Information Updated"
      redirect_to event_path(@event)
    else
      flash[:notice] = "Invalid Event Submission"
      render :edit
    end
  end

  def destroy
    @event = current_user.events.find(params[:id])
    if @event.destroy
      flash[:notice] = "Event Successfully Deleted"
    else
      flash[:notice] = "Event was not deleted"
    end
    redirect_to events_path
  end

  protected
  def event_params
    params.require(:event).permit(:title, :start_time, :end_time, :date,
      :details, :category_id, :address, :address_2, :city, :state, :zip_code)
  end
end
