(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };
  namespace("xbmc.models", function(exports) {
    exports.Album = Spine.Model.setup("Album", ["title", "artist", "year", "thumb", "fanart"]);
    return exports.Album.extend({
      load: function(artistid, settings, callback) {
        var audioLibrary;
        this.deleteAll();
        audioLibrary = new xbmc.lib.AudioLibrary(settings);
        return audioLibrary.getAlbums({
          artistid: artistid || -1,
          fields: ["album_artist", "year"]
        }, __bind(function(data) {
          var a, album, _i, _len, _ref;
          _ref = data.albums;
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            album = _ref[_i];
            a = this.init({
              artist: album.album_artist,
              id: album.albumid,
              title: album.label,
              year: album.year,
              thumb: album.thumbnail,
              fanart: album.fanart
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
