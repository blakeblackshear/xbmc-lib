(function() {
  window.XbmcRequest = (function() {
    function XbmcRequest(options) {
      var xhr;
      xhr = new XMLHttpRequest();
      xhr.open("POST", "http://" + options.settings.host + "/jsonrpc", true, options.settings.username, options.settings.password);
      postData({
        jsonrpc: "2.0",
        method: options.method,
        params: options.params,
        id: 1
      });
      xhr.send(JSON.stringify(postData));
      if (options.callback != null) {
        xhr.onreadystatechange(function() {
          if (xhr.readyState === 4) {
            return options.callback(JSON.parse(xhr.responseText).request[options.responseField]);
          }
        });
      }
    }
    return XbmcRequest;
  })();
}).call(this);
