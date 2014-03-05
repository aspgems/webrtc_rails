// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var Room = {
  initialize: function(local, remotes){
    if ($('#'+local).size() <= 0 || $('#'+remotes).size() <= 0) { return false; }

    var webrtc = new SimpleWebRTC({
      localVideoEl: local,
      remoteVideosEl: remotes,
      autoRequestMedia: true
    });

    webrtc.on('readyToCall', function () {
      webrtc.joinRoom($('h1').html());
    });
  }
}
