(function() {
  namespace("xbmc.lib", function(exports) {
    return exports.VideoLibrary = (function() {
      function VideoLibrary(settings) {
        this.settings = settings;
      }
      VideoLibrary.prototype.getMovies = function(params, callback) {
        return new XbmcRequest({
          settings: this.settings,
          method: "VideoLibrary.GetMovies",
          params: params,
          callback: callback
        });
      };
      VideoLibrary.prototype.getTvShows = function(params, callback) {
        return new XbmcRequest({
          settings: this.settings,
          method: "VideoLibrary.GetTVShows",
          params: params,
          callback: callback
        });
      };
      VideoLibrary.prototype.getSeasons = function(params, callback) {
        return new XbmcRequest({
          settings: this.settings,
          method: "VideoLibrary.GetSeasons",
          params: params,
          callback: callback
        });
      };
      VideoLibrary.prototype.getEpisodes = function(params, callback) {
        return new XbmcRequest({
          settings: this.settings,
          method: "VideoLibrary.GetEpisodes",
          params: params,
          callback: callback
        });
      };
      return VideoLibrary;
    })();
  });
}).call(this);
