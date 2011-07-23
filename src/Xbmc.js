(function() {
  window.Xbmc = (function() {
    function Xbmc(settings) {
      this.settings = settings;
    }
    Xbmc.prototype.getVolume = function(callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "XBMC.GetVolume",
        callback: callback
      });
    };
    Xbmc.prototype.setVolume = function(volume, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "XBMC.SetVolume",
        params: {
          value: volume
        },
        callback: callback
      });
    };
    return Xbmc;
  })();
}).call(this);
