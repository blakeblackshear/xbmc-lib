class window.Input
	constructor: (@settings) ->
	back: (callback) ->
		new XbmcRequest
			settings: @settings
			method: "Input.Back"
			callback: callback
	home: (callback) ->
		new XbmcRequest
			settings: @settings
			method: "Input.Home"
			callback: callback
	down: (callback) ->
		new XbmcRequest
			settings: @settings
			method: "Input.Down"
			callback: callback
	up: (callback) ->
		new XbmcRequest
			settings: @settings
			method: "Input.Up"
			callback: callback
	left: (callback) ->
		new XbmcRequest
			settings: @settings
			method: "Input.Left"
			callback: callback
	right: (callback) ->
		new XbmcRequest
			settings: @settings
			method: "Input.Right"
			callback: callback
	select: (callback) ->
		new XbmcRequest
			settings: @settings
			method: "Input.Select"
			callback: callback
	