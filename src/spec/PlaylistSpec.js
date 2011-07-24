(function() {
  describe("Playlist", function() {
    it("should be able to be a video playlist", function() {
      var playlist;
      playlist = new Playlist({}, "Video");
      return expect(playlist.type).toEqual("Video");
    });
    return it("should be able to be an audio playlist", function() {
      var playlist;
      playlist = new Playlist({}, "Audio");
      return expect(playlist.type).toEqual("Audio");
    });
  });
}).call(this);
