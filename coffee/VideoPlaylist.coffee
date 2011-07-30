namespace "xbmc.lib", (exports) ->
	class exports.VideoPlaylist extends xbmc.lib.Playlist
		constructor: (settings) ->
			super settings, "Video"