(function() {
  describe("Artist model", function() {
    var artistModel;
    artistModel = xbmc.models.Artist;
    beforeEach(function() {
      return artistModel.deleteAll();
    });
    return it("can load artists", function() {
      var refreshed;
      refreshed = false;
      artistModel.bind("refresh", function() {
        return refreshed = true;
      });
      artistModel.load();
      waitsFor(function() {
        return refreshed;
      }, "artists to load");
      return runs(function() {
        return expect(artistModel.all().length === 0).toBeFalsy();
      });
    });
  });
}).call(this);
