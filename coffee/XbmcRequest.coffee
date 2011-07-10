class window.XbmcRequest
	constructor: (options) ->
		xhr = new XMLHttpRequest()
		host = if options.settings.host? then "http://#{ options.settings.host }" else ""
		xhr.open "POST", "#{ host }/jsonrpc", true, options.settings.username, options.settings.password

		postData =
			jsonrpc: "2.0"
			method: options.method
			params: options.params
			id: 1

		xhr.send JSON.stringify postData

		if options.callback?
			xhr.onreadystatechange ->
				if xhr.readyState is 4
					options.callback JSON.parse(xhr.responseText).request[options.responseField]