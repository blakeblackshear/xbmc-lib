class window.XbmcRequest
	constructor: (options) ->
		xhr = new XMLHttpRequest()

		xhr.open "POST", "http://#{ options.settings.host }/jsonrpc", true, options.settings.username, options.settings.password

		postData
			jsonrpc: "2.0"
			method: options.method
			params: options.params
			id: 1

		xhr.send JSON.stringify postData

		if options.callback?
			xhr.onreadystatechange ->
				if xhr.readyState is 4
					options.callback JSON.parse(xhr.responseText).request[options.responseField]