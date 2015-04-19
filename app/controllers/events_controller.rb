class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def show
    @event = Event.find(params[:id])
  end

  def index
    @events = Event.page(params[:page]).order(likes_count: :desc)
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    # @event.event_photo = params[:file]
    if @event.save
      flash[:notice] = "Event Saved"
      redirect_to event_path(@event)
    else
      flash[:notice] = "Invalid Input"
      render :new
    end
  end

  def edit
    access_to_event?(current_user)
  end

  def update
    access_to_event?(current_user)

    if @event.update(event_params)
      flash[:notice] = "Event Information Updated"
      redirect_to event_path
    else
      flash[:notice] = "Invalid Event Submission"
      render :edit
    end
  end

  def destroy
    access_to_event?(current_user)
    if @event.destroy
      flash[:notice] = "Event Successfully Deleted"
      redirect_to calendar_path
    else
      flash[:notice] = "Event was not deleted"
    end
  end


  def access_to_event?(current_user)
    if current_user.admin
      @event = Event.find(params[:id])
    else
      @event = current_user.events.find(params[:id])
    end
  end

  protected
  def event_params
    params.require(:event).permit(:title, :start_time, :end_time, :date,
      :details, :category_id, :address, :address_2, :city, :state, :zip_code,
      :longitude, :latitude, :event_photo)
  end
end
