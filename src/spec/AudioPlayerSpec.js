(function() {
  describe("AudioPlayer", function() {
    var audioPlayer, makeCall;
    audioPlayer = null;
    makeCall = function(method, params) {
      var done, results;
      results = null;
      done = false;
      audioPlayer[method](params, function(data) {
        done = true;
        return results = data;
      });
      waitsFor(function() {
        return done;
      });
      return runs(function() {
        return expect(results).not.toBeNull();
      });
    };
    beforeEach(function() {
      return audioPlayer = new AudioPlayer();
    });
    it("can take a big skip backward", function() {
      return makeCall("bigSkipBackward", {});
    });
    it("can take a big skip forward", function() {
      return makeCall("bigSkipForward", {});
    });
    it("can go forward", function() {
      return makeCall("forward", {});
    });
    it("can get the current percentage", function() {
      return makeCall("getPercentage", {});
    });
    it("can get the time", function() {
      return makeCall("getTime", {});
    });
    it("can play or pause", function() {
      return makeCall("playPause", {});
    });
    it("can rewind", function() {
      return makeCall("rewind", {});
    });
    it("can seek to a percentage", function() {
      return makeCall("seekPercentage", {});
    });
    it("can seek to a time", function() {
      return makeCall("seekTime", {});
    });
    it("can skip to the next item", function() {
      return makeCall("skipNext", {});
    });
    it("can skip to the previous item", function() {
      return makeCall("skipPrevious", {});
    });
    it("can take a small skip backward", function() {
      return makeCall("smallSkipBackward", {});
    });
    it("can take a small skip forward", function() {
      return makeCall("smallSkipForward", {});
    });
    it("can get the current state", function() {
      return makeCall("state", {});
    });
    return it("can stop", function() {
      return makeCall("stop", {});
    });
  });
}).call(this);
