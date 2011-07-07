(function() {
  /*
  Copyright (c) 2011 by Blake Blackshear
  
  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:
  
  The above copyright notice and this permission notice shall be included in
  all copies or substantial portions of the Software.
  
  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
  THE SOFTWARE.
  */  var XbmcRequest;
  XbmcRequest = (function() {
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
