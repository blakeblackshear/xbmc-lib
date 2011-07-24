(function() {
  describe("AudioPlaylist", function() {
    var audioPlaylist, makeCall;
    audioPlaylist = null;
    makeCall = function(params, method) {
      var done, results;
      results = null;
      done = false;
      audioPlaylist[method](function(params, data) {
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
      return audioPlaylist = new AudioPlaylist();
    });
    it("can add an item", function() {
      var done, results;
      results = null;
      done = false;
      audioPlaylist.add([], function(params, data) {
        done = true;
        return results = data;
      });
      waitsFor(function() {
        return done;
      });
      return runs(function() {
        return expect(results).not.toBeNull();
      });
    });
    it("can clear all items", function() {
      return makeCall({}, "clear");
    });
    it("can get items", function() {
      var done, results;
      results = null;
      done = false;
      audioPlaylist.getItems(null, null, null, function(params, data) {
        done = true;
        return results = data;
      });
      waitsFor(function() {
        return done;
      });
      return runs(function() {
        return expect(results).not.toBeNull();
      });
    });
    it("can insert an item", function() {
      var done, results;
      results = null;
      done = false;
      audioPlaylist.insert(null, null, function(params, data) {
        done = true;
        return results = data;
      });
      waitsFor(function() {
        return done;
      });
      return runs(function() {
        return expect(results).not.toBeNull();
      });
    });
    it("can play an item", function() {
      return makeCall({}, "play");
    });
    it("can remove an item", function() {
      var done, results;
      results = null;
      done = false;
      audioPlaylist.remove(null, function(params, data) {
        done = true;
        return results = data;
      });
      waitsFor(function() {
        return done;
      });
      return runs(function() {
        return expect(results).not.toBeNull();
      });
    });
    it("can shuffle the items", function() {
      return makeCall({}, "shuffle");
    });
    it("can skip to the next item", function() {
      return makeCall({}, "skipNext");
    });
    it("can skip to the previous item", function() {
      return makeCall({}, "skipPrevious");
    });
    return it("can unshuffle the items", function() {
      return makeCall({}, "unShuffle");
    });
  });
}).call(this);
