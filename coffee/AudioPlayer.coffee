namespace "xbmc.lib", (exports) ->
	class exports.AudioPlayer extends xbmc.lib.Player
		constructor: (settings) ->
			super settings, "Audio"