(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };
  namespace("xbmc.models", function(exports) {
    exports.Artist = Spine.Model.setup("Artist", ["title", "fanart"]);
    return exports.Artist.extend({
      load: function(settings, callback) {
        var audioLibrary;
        this.deleteAll();
        audioLibrary = new xbmc.lib.AudioLibrary(settings);
        return audioLibrary.getArtists({}, __bind(function(data) {
          var a, artist, _i, _len, _ref;
          _ref = data.artists;
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            artist = _ref[_i];
            a = this.init({
              id: artist.artistid,
              title: artist.label,
              fanart: artist.fanart
            });
            a.save();
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
