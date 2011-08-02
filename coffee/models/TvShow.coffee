namespace "xbmc.models", (exports) ->
	exports.TvShow = Spine.Model.setup "TvShow", ["title", "thumb", "fanart"]

	exports.TvShow.extend
		load: (settings, callback) ->
			@.deleteAll()

			videoLibrary = new xbmc.lib.VideoLibrary(settings)
			videoLibrary.getTvShows {}, (data) =>
				for show in data.tvshows
					s = @.init
						id: show.tvshowid
						title: show.label
						thumb: show.thumbnail
						fanart: show.fanart
					s.save()
				@.trigger "refresh"
				callback() if callback?
