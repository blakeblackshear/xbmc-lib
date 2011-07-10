(function() {
  describe("VideoLibrary", function() {
    var videoLibrary;
    videoLibrary = null;
    beforeEach(function() {
      return videoLibrary = new VideoLibrary({});
    });
    it("should be able to get movies", function() {
      var done, movies;
      movies = null;
      done = false;
      videoLibrary.getMovies({
        "fields": ["year", "genre"]
      }, function(data) {
        movies = data;
        return done = true;
      });
      waitsFor(function() {
        return done;
      });
      return runs(function() {
        var movie, _i, _len, _results;
        expect(movies).not.toBeNull();
        _results = [];
        for (_i = 0, _len = movies.length; _i < _len; _i++) {
          movie = movies[_i];
          expect(movie.year).not.toBeNull();
          _results.push(expect(movie.genre).not.toBeNull());
        }
        return _results;
      });
    });
    it("should be able to get tvshows", function() {
      var done, tvshows;
      tvshows = null;
      done = false;
      videoLibrary.getTvShows({}, function(data) {
        tvshows = data;
        return done = true;
      });
      waitsFor(function() {
        return done;
      });
      return runs(function() {
        return expect(tvshows).not.toBeNull();
      });
    });
    it("should be able to get all seasons", function() {
      var done, seasons;
      seasons = null;
      done = false;
      videoLibrary.getSeasons({}, function(data) {
        seasons = data;
        return done = true;
      });
      waitsFor(function() {
        return done;
      });
      return runs(function() {
        return expect(seasons).not.toBeNull();
      });
    });
    return it("should be able to get all epsiodes", function() {
      var done, episodes;
      episodes = null;
      done = false;
      videoLibrary.getEpisodes({}, function(data) {
        episodes = data;
        return done = true;
      });
      waitsFor(function() {
        return done;
      });
      return runs(function() {
        return expect(episodes).not.toBeNull();
      });
    });
  });
}).call(this);
