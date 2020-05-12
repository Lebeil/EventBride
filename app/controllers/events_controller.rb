class EventsController < ApplicationController
  def index
    @all_events = Event.all
  end

  def new
    @event = Event.new
  end


end
