(function() {
  namespace("xbmc.lib", function(exports) {
    return exports.AudioLibrary = (function() {
      function AudioLibrary(settings) {
        this.settings = settings;
      }
      AudioLibrary.prototype.getArtists = function(params, callback) {
        return new XbmcRequest({
          settings: this.settings,
          method: "AudioLibrary.GetArtists",
          params: params,
          callback: callback
        });
      };
      AudioLibrary.prototype.getAlbums = function(params, callback) {
        return new XbmcRequest({
          settings: this.settings,
          method: "AudioLibrary.GetAlbums",
          params: params,
          callback: callback
        });
      };
      AudioLibrary.prototype.getSongs = function(params, callback) {
        return new XbmcRequest({
          settings: this.settings,
          method: "AudioLibrary.GetSongs",
          params: params,
          callback: callback
        });
      };
      return AudioLibrary;
    })();
  });
}).call(this);
