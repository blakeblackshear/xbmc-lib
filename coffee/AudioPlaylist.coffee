namespace "xbmc.lib", (exports) ->
	class exports.AudioPlaylist extends xbmc.lib.Playlist
		constructor: (settings) ->
			super settings, "Audio"