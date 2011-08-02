(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };
  namespace("xbmc.models", function(exports) {
    exports.Season = Spine.Model.setup("Season", ["tvshowid", "number", "title", "thumb", "fanart"]);
    return exports.Season.extend({
      load: function(tvshowid, settings, callback) {
        var videoLibrary;
        this.deleteAll();
        videoLibrary = new xbmc.lib.VideoLibrary(settings);
        return videoLibrary.getSeasons({
          fields: ["season"],
          tvshowid: tvshowid
        }, __bind(function(data) {
          var s, season, _i, _len, _ref;
          _ref = data.seasons;
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            season = _ref[_i];
            s = this.init({
              title: season.label,
              tvshowid: tvshowid,
              number: season.season,
              thumb: season.thumbnail,
              fanart: season.fanart
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
