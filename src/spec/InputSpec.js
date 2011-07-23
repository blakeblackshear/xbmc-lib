(function() {
  describe("Input", function() {
    var input, makeCall;
    input = null;
    makeCall = function(method) {
      var done, results;
      results = null;
      done = false;
      input[method](function(data) {
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
      return input = new Input();
    });
    it("can go back", function() {
      return makeCall("back");
    });
    it("can go down", function() {
      return makeCall("down");
    });
    it("can go left", function() {
      return makeCall("left");
    });
    it("can go right", function() {
      return makeCall("right");
    });
    it("can go up", function() {
      return makeCall("up");
    });
    it("can go home", function() {
      return makeCall("home");
    });
    return it("can select", function() {
      return makeCall("select");
    });
  });
}).call(this);
