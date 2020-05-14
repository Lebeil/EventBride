class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
  end

  def show
    @user = User.find(params[:id])
    @admin_events = Event.where(admin_id: @user.id)
    (@admin_events.size > 0)? (@admin = true) : (@admin = false)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = 'Bienvenue parmi nous !'
      render 'show'
    else
      render 'edit'
    end
  end
end
