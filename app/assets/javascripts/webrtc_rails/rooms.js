// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var Room = {
  initialize: function(local, remotes){
    if ($('#'+local).size() <= 0 || $('#'+remotes).size() <= 0) { return false; }
    this.webrtc = new SimpleWebRTC({
      // the id/element dom element that will hold "our" video
      localVideoEl: local,
      // the id/element dom element that will hold remote videos
      remoteVideosEl: remotes,
      // immediately ask for camera access
      autoRequestMedia: true
    });

    // we have to wait until it's ready
    this.webrtc.on('readyToCall', function () {
      // you can name it anything
      webrtc.joinRoom('your awesome room name');
    });
  }
}
