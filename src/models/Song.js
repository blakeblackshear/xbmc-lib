(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };
  namespace("xbmc.models", function(exports) {
    exports.Song = Spine.Model.setup("Song", ["artist", "album", "title", "thumb", "fanart"]);
    return exports.Song.extend({
      load: function(artistid, albumid, settings, callback) {
        var audioLibrary;
        this.deleteAll();
        audioLibrary = new xbmc.lib.AudioLibrary(settings);
        return audioLibrary.getSongs({
          artistid: artistid || -1,
          albumid: albumid || -1,
          fields: ["artist", "album"]
        }, __bind(function(data) {
          var s, song, _i, _len, _ref;
          _ref = data.songs;
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            song = _ref[_i];
            s = this.init({
              artist: song.artist,
              album: song.album,
              title: song.label,
              thumb: song.thumbnail,
              fanart: song.fanart
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
