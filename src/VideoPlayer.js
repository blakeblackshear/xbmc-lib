(function() {
  var __hasProp = Object.prototype.hasOwnProperty, __extends = function(child, parent) {
    for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; }
    function ctor() { this.constructor = child; }
    ctor.prototype = parent.prototype;
    child.prototype = new ctor;
    child.__super__ = parent.prototype;
    return child;
  };
  window.VideoPlayer = (function() {
    __extends(VideoPlayer, Player);
    function VideoPlayer(settings) {
      VideoPlayer.__super__.constructor.call(this, settings, "Video");
    }
    return VideoPlayer;
  })();
}).call(this);
