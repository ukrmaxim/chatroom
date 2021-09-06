class RoomsController < ApplicationController
  before_action :set_room, only: %i[show destroy]

  def index
    @rooms = Room.all
    @room = Room.new
  end

  def show; end

  def create
    @room = Room.create!(user_id: current_user.id)

    redirect_to @room, notice: 'Room was successfully created.'
  end

  def destroy
    if @room.user_id == current_user.id
      @room.destroy

      redirect_to root_path, notice: 'Room was successfully deleted.'
    end
  end

  private

  def set_room
    @room = Room.find_by(token: params[:token])
  end
end
