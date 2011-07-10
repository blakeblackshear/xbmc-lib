(function() {
  window.XbmcRequest = (function() {
    function XbmcRequest(options) {
      var host, postData, xhr;
      xhr = new XMLHttpRequest();
      host = options.settings.host != null ? "http://" + options.settings.host : "";
      xhr.open("POST", "" + host + "/jsonrpc", true, options.settings.username, options.settings.password);
      postData = {
        jsonrpc: "2.0",
        method: options.method,
        params: options.params,
        id: 1
      };
      xhr.send(JSON.stringify(postData));
      if (options.callback != null) {
        xhr.onreadystatechange(function() {
          if (xhr.readyState === 4) {
            return options.callback(JSON.parse(xhr.responseText).request);
          }
        });
      }
    }
    return XbmcRequest;
  })();
}).call(this);
