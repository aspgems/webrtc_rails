// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var Room = {
  initialize: function(local, remotes){
    if ($('#'+local).size() <= 0 || $('#'+remotes).size() <= 0) { return false; }

    var name = $('h1').html();

    var webrtc = new SimpleWebRTC({
      localVideoEl: local,
      remoteVideosEl: remotes,
      autoRequestMedia: true
    });

    webrtc.on('readyToCall', function() {
      webrtc.joinRoom(name);
    });

    webrtc.createRoom(name, function(err, name) {
      if (err) { return false; }
      setRoom(name);
    });

    var button = $('#screenShareButton');
    var setButton = function(bool) {
      button.text(bool ? 'share screen' : 'stop sharing');
    };

    setButton(true);

    if (!webrtc.screenSharingSupport) {
      button[0].disabled = true;
    } else {
      button.click(function() {
        if (webrtc.localScreen) {
          webrtc.stopScreenShare();
          setButton(true);
        } else {
          webrtc.shareScreen();
          setButton(false);
        }
      });
    }
  }
}
