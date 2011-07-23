(function() {
  window.Input = (function() {
    function Input(settings) {
      this.settings = settings;
    }
    Input.prototype.back = function(callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "Input.Back",
        callback: callback
      });
    };
    Input.prototype.home = function(callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "Input.Home",
        callback: callback
      });
    };
    Input.prototype.down = function(callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "Input.Down",
        callback: callback
      });
    };
    Input.prototype.up = function(callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "Input.Up",
        callback: callback
      });
    };
    Input.prototype.left = function(callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "Input.Left",
        callback: callback
      });
    };
    Input.prototype.right = function(callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "Input.Right",
        callback: callback
      });
    };
    Input.prototype.select = function(callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "Input.Select",
        callback: callback
      });
    };
    return Input;
  })();
}).call(this);
