(function() {
  describe("Season model", function() {
    var seasonModel, tvShowModel;
    tvShowModel = xbmc.models.TvShow;
    seasonModel = xbmc.models.Season;
    beforeEach(function() {
      tvShowModel.deleteAll();
      return seasonModel.deleteAll();
    });
    return it("can load seasons", function() {
      var loaded;
      loaded = false;
      tvShowModel.bind("refresh", function() {
        return loaded = true;
      });
      seasonModel.bind("refresh", function() {
        return loaded = true;
      });
      tvShowModel.load();
      waitsFor(function() {
        return loaded;
      }, "tvshows to load");
      runs(function() {
        loaded = false;
        return seasonModel.load(tvShowModel.first().id);
      });
      waitsFor(function() {
        return loaded;
      }, "seasons to load");
      return runs(function() {
        var firstSeason;
        expect(seasonModel.all().length).not.toEqual(0);
        firstSeason = seasonModel.first();
        expect(firstSeason.title).not.toBeNull();
        expect(firstSeason.tvshowid).not.toBeNull();
        expect(firstSeason.number).not.toBeNull();
        return expect(firstSeason.thumb).not.toBeNull();
      });
    });
  });
}).call(this);
