(function() {
  window.VideoLibrary = (function() {
    function VideoLibrary(settings) {
      this.settings = settings;
    }
    VideoLibrary.prototype.getMovies = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "VideoLibrary.GetMovies",
        params: params,
        responseField: "movies",
        callback: callback
      });
    };
    VideoLibrary.prototype.getTvShows = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "VideoLibrary.GetTVShows",
        params: params,
        responseField: "tvshows",
        callback: callback
      });
    };
    VideoLibrary.prototype.getSeasons = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "VideoLibrary.GetSeasons",
        params: params,
        responseField: "seasons",
        callback: callback
      });
    };
    VideoLibrary.prototype.getEpisodes = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "VideoLibrary.GetEpisodes",
        params: params,
        responseField: "episodes",
        callback: callback
      });
    };
    return VideoLibrary;
  })();
}).call(this);
