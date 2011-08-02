(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };
  namespace("xbmc.models", function(exports) {
    exports.TvShow = Spine.Model.setup("TvShow", ["title", "thumb", "fanart"]);
    return exports.TvShow.extend({
      load: function(settings, callback) {
        var videoLibrary;
        this.deleteAll();
        videoLibrary = new xbmc.lib.VideoLibrary(settings);
        return videoLibrary.getTvShows({}, __bind(function(data) {
          var s, show, _i, _len, _ref;
          _ref = data.tvshows;
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            show = _ref[_i];
            s = this.init({
              id: show.tvshowid,
              title: show.label,
              thumb: show.thumbnail,
              fanart: show.fanart
            });
            s.save();
          }
          this.trigger("refresh");
          if (callback != null) {
            return callback();
          }
        }, this));
      }
    });
  });
}).call(this);
