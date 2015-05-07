class EventsController < ApplicationController

  #before_action :find_event, :only => [:new]

  def index
  end

  def new
    venue_array
    @event = Event.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def venue_array
    @venue_array = Venue.all.collect do |venue|
       [venue.name, venue.id]
      end.sort
  end

  def find_event
    @event = Event.find(params[:id])
  end
    
end
