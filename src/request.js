(function() {
  var Request;
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };
  Request = (function() {
    function Request() {
      this.xhr = new XMLHttpRequest();
    }
    Request.prototype.send = function(options) {
      this.xhr.open(options.method, options.url, true, options.username || null, options.password || null);
      this.xhr.send(options.data || null);
      if (options.callback != null) {
        return this.xhr.onreadystatechange(__bind(function() {
          if (this.xhr.readyState === 4) {
            return options.callback(this.xhr);
          }
        }, this));
      }
    };
    return Request;
  })();
}).call(this);
