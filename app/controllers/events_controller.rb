class EventsController < ApplicationController
  def index 
    @events = Event.all
  end

  def show 
    @event = Event.find(params[:id])
  end

  def new 
    @event = Event.new
  end

  def create 
    @event = Event.new(event_params)
    @event.update!(admin: current_user)
    @event.save!
    redirect_to events_path
  end

  private
  def event_params 
    params.require(:event).permit(:start_date,:title,:description,:price,:location,:duration,:admin_id)
  end
end
