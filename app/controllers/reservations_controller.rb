class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :update, :destroy]
  before_action :set_room

  def index
    @reservations = Reservation.all
  end

  def show
  end

  def new
    @reservation = @room.reservations.build
    @date = params[:date].to_date
  end

  def edit
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.start_time = Time.parse(params[:date]) + @reservation.start_time.hour.hours

    if @reservation.save
      flash[:success] = "Sua reunião foi agendada com sucesso!"
      redirect_to room_path
    else
      flash[:danger] = "O horário não está disponível"
      redirect_to room_path
    end
  end

  def destroy
    @reservation.destroy
    flash[:success] = "Horario removido com sucesso!"
    redirect_to @reservation.room
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def set_room
    @room = Room.find(params[:oom_id])
  end

  def reservation_params
    params.require(:reservation).permit(:name, :start_time, :room_id, :user_id)
  end
end
