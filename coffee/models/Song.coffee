namespace "xbmc.models", (exports) ->
	exports.Song = Spine.Model.setup "Song", ["artist", "album", "title", "thumb", "fanart"]

	exports.Song.extend
		load: (artistid, albumid, settings, callback) ->
			@.deleteAll()

			audioLibrary = new xbmc.lib.AudioLibrary(settings)
			audioLibrary.getSongs
                artistid: artistid or -1,
                albumid: albumid or -1,
                fields: ["artist", "album"]
                ,
                (data) =>
                	for song in data.songs
                		s = @.init
                			artist: song.artist
                			album: song.album
                			title: song.label
                			thumb: song.thumbnail
                			fanart: song.fanart
                		s.save()
                	@.trigger "refresh"
                	callback() if callback?