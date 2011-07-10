(function() {
  describe("Player", function() {
    it("should be able to be a video player", function() {
      var player;
      player = new Player({}, "Video");
      return expect(player.type).toEqual("Video");
    });
    return it("should be able to be an audio player", function() {
      var player;
      player = new Player({}, "Audio");
      return expect(player.type).toEqual("Audio");
    });
  });
}).call(this);
