namespace "xbmc.models", (exports) ->
	exports.Artist = Spine.Model.setup "Artist", ["title", "fanart"]

	exports.Artist.extend
		load: (settings, callback) ->
			@.deleteAll()

			audioLibrary = new xbmc.lib.AudioLibrary(settings)
			audioLibrary.getArtists {}, (data) =>
				for artist in data.artists
					a = @.init
						id: artist.artistid
						title: artist.label
						fanart: artist.fanart
					a.save()
				@.trigger "refresh"
				callback() if callback?