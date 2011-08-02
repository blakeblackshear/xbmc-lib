(function() {
  describe("Movie model", function() {
    var movieModel;
    movieModel = xbmc.models.Movie;
    beforeEach(function() {
      return movieModel.deleteAll();
    });
    it("can load movies", function() {
      movieModel.load();
      waitsFor(function() {
        return movieModel.all().length !== 0;
      }, "movies to load");
      return runs(function() {
        var firstMovie;
        expect(movieModel.all().length).not.toEqual(0);
        firstMovie = movieModel.first();
        expect(firstMovie.title).not.toBeNull();
        expect(firstMovie.year).not.toBeNull();
        expect(firstMovie.thumb).not.toBeNull();
        return expect(firstMovie.file).not.toBeNull();
      });
    });
    it("will notify you when all movies are loaded", function() {
      var refreshed;
      refreshed = false;
      movieModel.bind("refresh", function() {
        return refreshed = true;
      });
      movieModel.load();
      return waitsFor(function() {
        return refreshed;
      }, "movies to load");
    });
    return it("will notify you if a movie changes", function() {
      var changed, loaded;
      changed = false;
      movieModel.bind("change", function() {
        return changed = true;
      });
      loaded = false;
      movieModel.bind("refresh", function() {
        return loaded = true;
      });
      movieModel.load();
      waitsFor(function() {
        return loaded;
      }, "movies to load");
      runs(function() {
        return movieModel.first().title = "New Title";
      });
      return waitsFor(function() {
        return changed;
      }, "change notification");
    });
  });
}).call(this);
