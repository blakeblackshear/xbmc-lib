class Request
	constructor: ->
		@xhr = new XMLHttpRequest()
	send: (options) ->
		@xhr.open options.method, options.url, true, options.username or null, options.password or null

		@xhr.send options.data or null

		if options.callback?
			@xhr.onreadystatechange =>
				if @xhr.readyState is 4
					options.callback @xhr