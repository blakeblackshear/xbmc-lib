namespace "xbmc.lib", (exports) ->
	class exports.VideoLibrary
		constructor: (@settings) ->
		getMovies: (params, callback) ->
			new XbmcRequest 
				settings: @settings
				method: "VideoLibrary.GetMovies"
				params: params
				callback: callback
		getTvShows: (params, callback) ->
			new XbmcRequest
				settings: @settings
				method: "VideoLibrary.GetTVShows"
				params: params
				callback: callback
		getSeasons: (params, callback) ->
			new XbmcRequest
				settings: @settings
				method: "VideoLibrary.GetSeasons"
				params: params
				callback: callback
		getEpisodes: (params, callback) ->
			new XbmcRequest
				settings: @settings
				method: "VideoLibrary.GetEpisodes"
				params: params
				callback: callback