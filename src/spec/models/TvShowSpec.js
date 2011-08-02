(function() {
  describe("TvShow model", function() {
    var tvShowModel;
    tvShowModel = xbmc.models.TvShow;
    beforeEach(function() {
      return tvShowModel.deleteAll();
    });
    it("can load tvshows", function() {
      tvShowModel.load();
      waitsFor(function() {
        return tvShowModel.all().length !== 0;
      }, "tvshows to load");
      return runs(function() {
        var firstMovie;
        expect(tvShowModel.all().length).not.toEqual(0);
        firstMovie = tvShowModel.first();
        expect(firstMovie.title).not.toBeNull();
        expect(firstMovie.year).not.toBeNull();
        expect(firstMovie.thumb).not.toBeNull();
        return expect(firstMovie.file).not.toBeNull();
      });
    });
    it("can notify you when all shows are refreshed", function() {
      var refreshed;
      refreshed = false;
      tvShowModel.bind("refresh", function() {
        return refreshed = true;
      });
      tvShowModel.load();
      return waitsFor(function() {
        return refreshed;
      }, "tvshows to load");
    });
    return it("can notify you when a show changes", function() {
      var changed, loaded;
      changed = false;
      tvShowModel.bind("change", function() {
        return changed = true;
      });
      loaded = false;
      tvShowModel.bind("refresh", function() {
        return loaded = true;
      });
      tvShowModel.load();
      waitsFor(function() {
        return loaded;
      }, "tvshows to load");
      runs(function() {
        return tvShowModel.first().title = "New Title";
      });
      return waitsFor(function() {
        return changed;
      }, "change notification");
    });
  });
}).call(this);
