(function() {
  describe("Album model", function() {
    var albumModel, artistModel;
    artistModel = xbmc.models.Artist;
    albumModel = xbmc.models.Album;
    beforeEach(function() {
      artistModel.deleteAll();
      return albumModel.deleteAll();
    });
    return it("can load albums", function() {
      var loaded;
      loaded = false;
      artistModel.bind("refresh", function() {
        return loaded = true;
      });
      albumModel.bind("refresh", function() {
        return loaded = true;
      });
      artistModel.load();
      waitsFor(function() {
        return loaded;
      }, "artists to load");
      runs(function() {
        loaded = false;
        return albumModel.load(artistModel.first().id);
      });
      waitsFor(function() {
        return loaded;
      }, "albums to load");
      return runs(function() {
        var firstAlbum;
        expect(albumModel.all().length).not.toEqual(0);
        firstAlbum = albumModel.first();
        expect(firstAlbum.title).not.toBeNull();
        expect(firstAlbum.artist).not.toBeNull();
        expect(firstAlbum.year).not.toBeNull();
        expect(firstAlbum.thumb).not.toBeNull();
        return expect(firstAlbum.fanart).not.toBeNull();
      });
    });
  });
}).call(this);
