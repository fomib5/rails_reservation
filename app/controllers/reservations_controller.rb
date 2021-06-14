class ReservationsController < ApplicationController
  
  def index
    @reservations = Reservation.all
  end
  
  def confirm
    @reservation = Reservation.new(permit_params)
    @room = @reservation.room
    @days = (@reservation.end_date - @reservation.start_date).to_i
    @total_price = @reservation.persons * @days * @room.price
  end
  
  def complete
    @reservation = Reservation.new(permit_params)
    @room = @reservation.room
    @reservation.save
  end
    
  private
  
  def permit_params
    @attr = params.require(:reservation).permit(:start_date, :end_date, :persons, :days, :total_price, :room_id)
  end
end
