namespace "xbmc.lib", (exports) ->
	class exports.VideoPlayer extends xbmc.lib.Player
		constructor: (settings) ->
			super settings, "Video"