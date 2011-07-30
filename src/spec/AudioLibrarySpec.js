(function() {
  describe("Audio Library", function() {
    var audioLibrary;
    audioLibrary = null;
    beforeEach(function() {
      return audioLibrary = new xbmc.lib.AudioLibrary();
    });
    it("should be able to get artists", function() {
      var artists, done;
      artists = null;
      done = false;
      audioLibrary.getArtists({}, function(data) {
        artists = data.artists;
        return done = true;
      });
      waitsFor(function() {
        return done;
      });
      return runs(function() {
        return expect(artists).not.toBeNull();
      });
    });
    it("should be able to get all albums", function() {
      var albums, done;
      albums = null;
      done = false;
      audioLibrary.getAlbums({}, function(data) {
        albums = data.albums;
        return done = true;
      });
      waitsFor(function() {
        return done;
      });
      return runs(function() {
        return expect(albums).not.toBeNull();
      });
    });
    return it("should be able to get all songs", function() {
      var done, songs;
      songs = null;
      done = false;
      audioLibrary.getSongs({}, function(data) {
        songs = data.songs;
        return done = true;
      });
      waitsFor(function() {
        return done;
      });
      return runs(function() {
        return expect(songs).not.toBeNull();
      });
    });
  });
}).call(this);
