require_dependency "webrtc_rails/application_controller"

module WebrtcRails
  class RoomsController < ApplicationController

    def new
      @room = Room.new
    end

    def create
      @room = Room.new(room_params)

      if @room.valid?
        redirect_to room_path(@room)
      else
        render :new
      end
    end

    def show
      @room = Room.new(name: params[:id])
    end

    private

    def room_params
      params.require(:room).permit(:name).permit(:name)
    end

  end
end
