namespace "xbmc.models", (exports) ->
	exports.Album = Spine.Model.setup "Album", ["title", "artist", "year", "thumb", "fanart"]

	exports.Album.extend
		load: (artistid, settings, callback) ->
			@.deleteAll()

			audioLibrary = new xbmc.lib.AudioLibrary(settings)
			audioLibrary.getAlbums
				artistid: artistid or -1
				fields: ["album_artist", "year"]
				,
				(data) =>
					for album in data.albums
						a = @.init
							artist: album.album_artist
							id: album.albumid
							title: album.label
							year: album.year
							thumb: album.thumbnail
							fanart: album.fanart
						a.save()
					@.trigger "refresh"
					callback() if callback?