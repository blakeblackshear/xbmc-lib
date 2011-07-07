class window.VideoLibrary
	constructor: (@settings) ->
	getMovies: (params, callback) ->
		new XbmcRequest 
			settings: @settings
			method: "VideoLibrary.GetMovies"
			params: params
			responseField: "movies"
			callback: callback
	getTvShows: (params, callback) ->
		new XbmcRequest
			settings: @settings
			method: "VideoLibrary.GetTVShows"
			params: params
			responseField: "tvshows"
			callback: callback
	getSeasons: (params, callback) ->
		new XbmcRequest
			settings: @settings
			method: "VideoLibrary.GetSeasons"
			params: params
			responseField: "seasons"
			callback: callback
	getEpisodes: (params, callback) ->
		new XbmcRequest
			settings: @settings
			method: "VideoLibrary.GetEpisodes"
			params: params
			responseField: "episodes"
			callback: callback