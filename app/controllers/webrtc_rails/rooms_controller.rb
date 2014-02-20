require_dependency "webrtc_rails/application_controller"

module WebrtcRails
  class RoomsController < ApplicationController
    def new
    end

    def create
      redirect_to room_path(room_params)
    end

    def show
      @name = params[:id]
    end

    private

    def room_params
      URI.escape(params.require(:name)).parameterize
    end
  end
end
