require_dependency "webrtc_rails/application_controller"

module WebrtcRails
  class RoomsController < ApplicationController
    def new
    end

    def show
      @name = params[:id]
    end
  end
end
