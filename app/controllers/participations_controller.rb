class ParticipationsController < ApplicationController
  def new
    @event = Event.find(params[:id])
  end

  def create
    @participation = Attendance.new(user_id: params[:user_id], event_id: params[:event_id], stripe_customer_id: params[:customer_id])

    if @participation.save
      flash[:success] = "Event registration successfully saved"
      redirect_to root_path
    else
      flash[:failure] = "Event registration saving failed"
      redirect_to root_path
    end
  end

  def index
    @event = Event.find(params[:id])
    @participations = @event.participations
    unless current_user == @event.admin
      flash[:failure] = "Not authorized"
      redirect_to root_path
    end
  end

  def destroy
    @participation = Participation.find(params[:id])
    @participation.destroy
    redirect_to root_path
  end
end
