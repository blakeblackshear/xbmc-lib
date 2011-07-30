(function() {
  describe("Xbmc", function() {
    var xbmcTest;
    xbmcTest = null;
    beforeEach(function() {
      return xbmcTest = new xbmc.lib.Xbmc();
    });
    it("can get volume", function() {
      var done, results;
      results = null;
      done = false;
      xbmcTest.getVolume(function(data) {
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
    return it("can set volume", function() {
      var done, results;
      results = null;
      done = false;
      xbmcTest.setVolume(63, function(data) {
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
  });
}).call(this);
