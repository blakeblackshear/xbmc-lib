(function() {
  describe("Song model", function() {
    var albumModel, artistModel, songModel;
    artistModel = xbmc.models.Artist;
    albumModel = xbmc.models.Album;
    songModel = xbmc.models.Song;
    beforeEach(function() {
      artistModel.deleteAll();
      albumModel.deleteAll();
      return songModel.deleteAll();
    });
    return it("can load songs", function() {
      var loaded;
      loaded = false;
      artistModel.bind("refresh", function() {
        return loaded = true;
      });
      albumModel.bind("refresh", function() {
        return loaded = true;
      });
      songModel.bind("refresh", function() {
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
      runs(function() {
        loaded = false;
        return songModel.load(artistModel.first().id, albumModel.first().id);
      });
      waitsFor(function() {
        return loaded;
      }, "songs to load");
      return runs(function() {
        var firstSong;
        expect(songModel.all().length).not.toEqual(0);
        firstSong = songModel.first();
        expect(firstSong.artist).not.toBeNull();
        expect(firstSong.album).not.toBeNull();
        expect(firstSong.title).not.toBeNull();
        expect(firstSong.thumb).not.toBeNull();
        return expect(firstSong.fanart).not.toBeNull();
      });
    });
  });
}).call(this);
