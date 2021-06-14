class RoomsController < ApplicationController
  
  def posts
    @rooms = current_user.rooms
  end
  
  def new
    @room = Room.new
    @id = current_user.id
  end
  
  def create
    @room = Room.new(params.required(:room).permit(:name, :introduction, :price, :address, :room_image, :user_id))
    if @room.save
      flash[:notice] = "Room was successfully created"
      redirect_to :root
    else
      render "new"
    end
  end
  
  def show
    @room = Room.find(params[:id])
    @user = @room.user
    @reservation = Reservation.new
  end
  
  def search
    @rooms = Room.search(params[:address],params[:introduction])
    @result = @rooms.count
  end
  
end
