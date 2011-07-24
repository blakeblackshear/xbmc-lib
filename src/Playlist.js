(function() {
  window.Playlist = (function() {
    function Playlist(settings, type) {
      this.settings = settings;
      this.type = type;
    }
    Playlist.prototype.add = function(items, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Playlist.Add",
        params: {
          items: items
        },
        callback: callback
      });
    };
    Playlist.prototype.clear = function(callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Playlist.Clear",
        callback: callback
      });
    };
    Playlist.prototype.getItems = function(fields, limits, sort, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Playlist.GetItems",
        params: {
          fields: fields,
          limits: limits,
          sort: sort
        },
        callback: callback
      });
    };
    Playlist.prototype.insert = function(item, position, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Playlist.Insert",
        params: {
          index: position,
          item: item
        },
        callback: callback
      });
    };
    Playlist.prototype.play = function(callback, item, songid) {
      if (item == null) {
        item = -1;
      }
      if (songid == null) {
        songid = -1;
      }
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Playlist.Play",
        params: {
          item: item,
          songid: songid
        },
        callback: callback
      });
    };
    Playlist.prototype.remove = function(item, callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Playlist.Remove",
        params: {
          item: item
        },
        callback: callback
      });
    };
    Playlist.prototype.shuffle = function(callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Playlist.Shuffle",
        callback: callback
      });
    };
    Playlist.prototype.skipNext = function(callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Playlist.SkipNext",
        callback: callback
      });
    };
    Playlist.prototype.skipPrevious = function(callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Playlist.SkipPrevious",
        callback: callback
      });
    };
    Playlist.prototype.unShuffle = function(callback) {
      return new XbmcRequest({
        settings: this.settings,
        method: "" + this.type + "Playlist.UnShuffle",
        callback: callback
      });
    };
    return Playlist;
  })();
}).call(this);
