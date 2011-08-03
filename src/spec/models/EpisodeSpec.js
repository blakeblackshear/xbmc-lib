(function() {
  describe("Episode model", function() {
    var episodeModel, seasonModel, tvShowModel;
    tvShowModel = xbmc.models.TvShow;
    seasonModel = xbmc.models.Season;
    episodeModel = xbmc.models.Episode;
    beforeEach(function() {
      tvShowModel.deleteAll();
      seasonModel.deleteAll();
      return episodeModel.deleteAll();
    });
    return it("can load episodes", function() {
      var loaded;
      loaded = false;
      tvShowModel.bind("refresh", function() {
        return loaded = true;
      });
      seasonModel.bind("refresh", function() {
        return loaded = true;
      });
      episodeModel.bind("refresh", function() {
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
      runs(function() {
        loaded = false;
        return episodeModel.load(tvShowModel.first().id, seasonModel.first().number);
      });
      waitsFor(function() {
        return loaded;
      }, "episodes to load");
      return runs(function() {
        var firstEpisode;
        expect(episodeModel.all().length).not.toEqual(0);
        firstEpisode = episodeModel.first();
        expect(firstEpisode.title).not.toBeNull();
        expect(firstEpisode.tvshowid).not.toBeNull();
        expect(firstEpisode.season).not.toBeNull();
        expect(firstEpisode.thumb).not.toBeNull();
        return expect(firstEpisode.fanart).not.toBeNull();
      });
    });
  });
}).call(this);
