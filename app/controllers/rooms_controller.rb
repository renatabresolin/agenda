class RoomsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_room, only: [:show, :destroy]

  def index
    @rooms = Room.all
  end

  def show
    @reservations = @room.reservations
  end

  def new
    @room = Room.new
    @room.owner = current_user.id
  end

  def create
    @room = Room.new(room_params)
    @room.owner = current_user.id

    if @room.save
      redirect_to @room
    else
      render :new
    end
  end

  def destroy
    if @room.owner.to_i == current_user.id
      @room.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:name)
  end
end
