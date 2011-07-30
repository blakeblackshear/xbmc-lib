namespace "xbmc.lib", (exports) ->
	class exports.Player
		constructor: (@settings, @type)->
		bigSkipBackward: (params, callback) ->
			new XbmcRequest
				settings: @settings
				method: "#{ @type }Player.BigSkipBackward"
				params: params
				callback: callback
		bigSkipForward: (params, callback) ->
			new XbmcRequest
				settings: @settings
				method: "#{ @type }Player.BigSkipForward"
				params: params
				callback: callback
		forward: (params, callback) ->
			new XbmcRequest
				settings: @settings
				method: "#{ @type }Player.Forward"
				params: params
				callback: callback
		getPercentage: (params, callback) ->
			new XbmcRequest
				settings: @settings
				method: "#{ @type }Player.GetPercentage"
				params: params
				callback: callback
		getTime: (params, callback) ->
			new XbmcRequest
				settings: @settings
				method: "#{ @type }Player.GetTime"
				params: params
				callback: callback
		playPause: (params, callback) ->
			new XbmcRequest
				settings: @settings
				method: "#{ @type }Player.PlayPause"
				params: params
				callback: callback
		rewind: (params, callback) ->
			new XbmcRequest
				settings: @settings
				method: "#{ @type }Player.Rewind"
				params: params
				callback: callback
		seekPercentage: (params, callback) ->
			new XbmcRequest
				settings: @settings
				method: "#{ @type }Player.SeekPercentage"
				params: params
				callback: callback
		seekTime: (params, callback) ->
			new XbmcRequest
				settings: @settings
				method: "#{ @type }Player.SeekTime"
				params: params
				callback: callback
		skipNext: (params, callback) ->
			new XbmcRequest
				settings: @settings
				method: "#{ @type }Player.SkipNext"
				params: params
				callback: callback
		skipPrevious: (params, callback) ->
			new XbmcRequest
				settings: @settings
				method: "#{ @type }Player.SkipPrevious"
				params: params
				callback: callback
		smallSkipBackward: (params, callback) ->
			new XbmcRequest
				settings: @settings
				method: "#{ @type }Player.SmallSkipBackward"
				params: params
				callback: callback
		smallSkipForward: (params, callback) ->
			new XbmcRequest
				settings: @settings
				method: "#{ @type }Player.SmallSkipForward"
				params: params
				callback: callback
		state: (params, callback) ->
			new XbmcRequest
				settings: @settings
				method: "#{ @type }Player.State"
				params: params
				callback: callback
		stop: (params, callback) ->
			new XbmcRequest
				settings: @settings
				method: "#{ @type }Player.Stop"
				params: params
				callback: callback