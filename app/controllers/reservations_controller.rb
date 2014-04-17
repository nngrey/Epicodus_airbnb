class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    user_id = current_user.id
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      @reservation.update({:user_id => user_id})
      flash[:notice] = "Reservation created!"
      redirect_to reservation_path(@reservation)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @reservation.update(reservation_params)
      flash[:notice] = "Reservation updated!"
      redirect_to reservation_path
    else
      render 'edit'
    end
  end

  def destroy
    @reservation.destroy
    flash[:notice] = "Your reservation has been deleted."
    redirect_to properties_path
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:user_id, :property_id, :check_in, :check_out, :guest_number)
  end

end
