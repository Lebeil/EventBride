class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @events = Event.all
  end

  def new

  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:success] = "Bravo! Ton évènement créé."
      redirect_to event_path(@event.id)
    else
      messages = []
      if @event.errors.any?
        @event.errors.full_messages.each do |message|
          messages << message
        end
        flash[:danger] = "Impossible de créer l'évènement': #{messages.join(" ")}"
      end
      redirect_to new_event_path
    end
  end

  def edit
    @event = Event.find(params[:id])
    unless current_user == @event.admin
      flash[:failure] = "Not authorized"
      redirect_to root_path
    end
  end

  def destroy
    @event = Event.find(params[:id])
    if current_user == @event.admin
      @event.destroy
      flash[:success] = "Event successfully removed"
      redirect_to root_path
    else
      flash[:failure] = "Event removal failed"
      render :edit
    end
  end



  def show
    @event = Event.find(params[:id])
  end


  def event_params
    params.require(:events).permit(:title, :start_date, :duration, :description, :price, :location, :admin_id)
  end

  def authenticate_user
    unless current_user
      flash[:danger] = "Not logged in."
      redirect_to root_path
    end
  end

end
