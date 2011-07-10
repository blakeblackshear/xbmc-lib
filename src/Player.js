(function() {
  window.Player = (function() {
    function Player(settings, type) {
      this.settings = settings;
      this.type = type;
    }
    Player.prototype.bigSkipBackward = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Player.BigSkipBackward",
        params: params,
        callback: callback
      });
    };
    Player.prototype.bigSkipForward = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Player.BigSkipForward",
        params: params,
        callback: callback
      });
    };
    Player.prototype.forward = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Player.Forward",
        params: params,
        callback: callback
      });
    };
    Player.prototype.getPercentage = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Player.GetPercentage",
        params: params,
        callback: callback
      });
    };
    Player.prototype.getTime = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Player.GetTime",
        params: params,
        callback: callback
      });
    };
    Player.prototype.playPause = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Player.PlayPause",
        params: params,
        callback: callback
      });
    };
    Player.prototype.rewind = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Player.Rewind",
        params: params,
        callback: callback
      });
    };
    Player.prototype.seekPercentage = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Player.SeekPercentage",
        params: params,
        callback: callback
      });
    };
    Player.prototype.seekTime = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Player.SeekTime",
        params: params,
        callback: callback
      });
    };
    Player.prototype.skipNext = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Player.SkipNext",
        params: params,
        callback: callback
      });
    };
    Player.prototype.skipPrevious = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Player.SkipPrevious",
        params: params,
        callback: callback
      });
    };
    Player.prototype.smallSkipBackward = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Player.SmallSkipBackward",
        params: params,
        callback: callback
      });
    };
    Player.prototype.smallSkipForward = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Player.SmallSkipForward",
        params: params,
        callback: callback
      });
    };
    Player.prototype.state = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Player.State",
        params: params,
        callback: callback
      });
    };
    Player.prototype.stop = function(params, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Player.Stop",
        params: params,
        callback: callback
      });
    };
    return Player;
  })();
}).call(this);
