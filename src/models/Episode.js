(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };
  namespace("xbmc.models", function(exports) {
    exports.Episode = Spine.Model.setup("Episode", ["tvshowid", "season", "title", "thumb", "fanart"]);
    return exports.Episode.extend({
      load: function(tvshowid, season, settings, callback) {
        var videoLibrary;
        this.deleteAll();
        videoLibrary = new xbmc.lib.VideoLibrary(settings);
        return videoLibrary.getEpisodes({
          tvshowid: tvshowid,
          season: season
        }, __bind(function(data) {
          var e, episode, _i, _len, _ref;
          _ref = data.episodes;
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            episode = _ref[_i];
            e = this.init({
              title: episode.label,
              tvshowid: tvshowid,
              number: season,
              thumb: episode.thumbnail,
              fanart: episode.fanart
            });
            e.save();
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
