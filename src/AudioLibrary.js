(function() {
  window.AudioLibrary = (function() {
    function AudioLibrary(settings) {
      this.settings = settings;
    }
    AudioLibrary.prototype.getArtists = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "AudioLibrary.GetArtists",
        params: params,
        responseField: "artists",
        callback: callback
      });
    };
    AudioLibrary.prototype.getAlbums = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "AudioLibrary.GetAlbums",
        params: params,
        responseField: "albums",
        callback: callback
      });
    };
    AudioLibrary.prototype.getSongs = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "AudioLibrary.GetSongs",
        params: params,
        responseField: "songs",
        callback: callback
      });
    };
    return AudioLibrary;
  })();
}).call(this);
