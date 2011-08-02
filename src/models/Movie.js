(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };
  namespace("xbmc.models", function(exports) {
    exports.Movie = Spine.Model.setup("Movie", ["title", "year", "plot", "thumb", "file"]);
    return exports.Movie.extend({
      load: function(settings, callback) {
        var videoLibrary;
        this.deleteAll();
        videoLibrary = new xbmc.lib.VideoLibrary(settings);
        return videoLibrary.getMovies({
          fields: ["year", "genre"]
        }, __bind(function(data) {
          var m, movie, _i, _len, _ref;
          _ref = data.movies;
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            movie = _ref[_i];
            m = this.init({
              id: movie.id,
              title: movie.title,
              year: movie.year,
              thumb: movie.thumb,
              file: movie.file
            });
            m.save();
          }
          return this.trigger("refresh");
        }, this));
      }
    });
  });
}).call(this);
