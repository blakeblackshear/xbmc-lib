(function() {
  describe("Xbmc", function() {
    var xbmc;
    xbmc = null;
    beforeEach(function() {
      return xbmc = new Xbmc();
    });
    it("can get volume", function() {
      var done, results;
      results = null;
      done = false;
      xbmc.getVolume(function(data) {
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
      xbmc.setVolume(63, function(data) {
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
