class window.AudioLibrary
	constructor: (@settings) ->
	getArtists: (params, callback) ->
		new XbmcRequest
			settings: @settings
			method: "AudioLibrary.GetArtists"
			params: params
			responseField: "artists"
			callback: callback
	getAlbums: (params, callback) ->
		new XbmcRequest
			settings: @settings
			method: "AudioLibrary.GetAlbums"
			params: params
			responseField: "albums"
			callback: callback
	getSongs: (params, callback) ->
		new XbmcRequest
			settings: @settings
			method: "AudioLibrary.GetSongs"
			params: params
			responseField: "songs"
			callback: callback
	