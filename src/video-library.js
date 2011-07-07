(function() {
  /*
  Copyright (c) 2011 by Blake Blackshear
  
  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:
  
  The above copyright notice and this permission notice shall be included in
  all copies or substantial portions of the Software.
  
  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
  THE SOFTWARE.
  */  var VideoLibrary;
  VideoLibrary = (function() {
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
