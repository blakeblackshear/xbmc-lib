(function() {
  var __hasProp = Object.prototype.hasOwnProperty, __extends = function(child, parent) {
    for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; }
    function ctor() { this.constructor = child; }
    ctor.prototype = parent.prototype;
    child.prototype = new ctor;
    child.__super__ = parent.prototype;
    return child;
  };
  window.AudioPlayer = (function() {
    __extends(AudioPlayer, Player);
    function AudioPlayer(settings) {
      AudioPlayer.__super__.constructor.call(this, settings, "Audio");
    }
    return AudioPlayer;
  })();
}).call(this);
