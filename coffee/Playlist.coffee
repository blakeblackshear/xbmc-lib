class window.Playlist
	constructor: (@settings, @type) ->
	add: (items, callback) ->
		new XbmcRequest
			settings: @settings
			method: "#{ @type }Playlist.Add"
			params: 
				items: items
			callback: callback
	clear: (callback) ->
		new XbmcRequest
			settings: @settings
			method: "#{ @type }Playlist.Clear"
			callback: callback
	getItems: (fields, limits, sort, callback) ->
		new XbmcRequest
			settings: @settings
			method: "#{ @type }Playlist.GetItems"
			params:
				fields: fields
				limits: limits
				sort: sort
			callback: callback
	insert: (item, position, callback) ->
		new XbmcRequest
			settings: @settings
			method: "#{ @type }Playlist.Insert"
			params:
				index: position
				item: item
			callback: callback
	play: (callback, item = -1, songid = -1) ->
		new XbmcRequest
			settings: @settings
			method: "#{ @type }Playlist.Play"
			params:
				item: item
				songid: songid
			callback: callback
	remove: (item, callback) ->
		new XbmcRequest
			settings: @settings
			method: "#{ @type }Playlist.Remove"
			params:
				item: item
			callback: callback
	shuffle: (callback) ->
		new XbmcRequest
			settings: @settings
			method: "#{ @type }Playlist.Shuffle"
			callback: callback
	skipNext: (callback) ->
		new XbmcRequest
			settings: @settings
			method: "#{ @type }Playlist.SkipNext"
			callback: callback
	skipPrevious: (callback) ->
		new XbmcRequest
			settings: @settings
			method: "#{ @type }Playlist.SkipPrevious"
			callback: callback
	unShuffle: (callback) ->
		new XbmcRequest
			settings: @settings
			method: "#{ @type }Playlist.UnShuffle"
			callback: callback
	