Rails.application.routes.draw do

  mount WebrtcRails::Engine => "/webrtc_rails"

  root to: redirect('/webrtc_rails/rooms/new')
end
