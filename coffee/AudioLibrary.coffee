class window.AudioLibrary
	constructor: (@settings) ->
	getArtists: (params, callback) ->
		new XbmcRequest
			settings: @settings
			method: "AudioLibrary.GetArtists"
			params: params
			callback: callback
	getAlbums: (params, callback) ->
		new XbmcRequest
			settings: @settings
			method: "AudioLibrary.GetAlbums"
			params: params
			callback: callback
	getSongs: (params, callback) ->
		new XbmcRequest
			settings: @settings
			method: "AudioLibrary.GetSongs"
			params: params
			callback: callback
	