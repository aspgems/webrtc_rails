require_dependency "webrtc_rails/application_controller"

module WebrtcRails
  class VideoconfsController < ApplicationController
    def show
      @name = params[:id]
    end
  end
end
