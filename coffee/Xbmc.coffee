class window.Xbmc
	constructor: (@settings) ->
	getVolume: (callback) ->
		new XbmcRequest
			settings: @settings
			method: "XBMC.GetVolume"
			callback: callback
	setVolume: (volume, callback) ->
		new XbmcRequest
			settings: @settings
			method: "XBMC.SetVolume"
			params: 
				value: volume
			callback: callback