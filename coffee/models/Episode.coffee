namespace "xbmc.models", (exports) ->
	exports.Episode = Spine.Model.setup "Episode", ["tvshowid", "season", "title", "thumb", "fanart"]

	exports.Episode.extend
		load: (tvshowid, season, settings, callback) ->
			@.deleteAll()

			videoLibrary = new xbmc.lib.VideoLibrary(settings)
			videoLibrary.getEpisodes
				tvshowid: tvshowid
				season: season
				, 
				(data) =>
					for episode in data.episodes
						e = @.init
							title: episode.label
							tvshowid: tvshowid
							number: season
							thumb: episode.thumbnail
							fanart: episode.fanart
						e.save();
					@.trigger "refresh"
					callback() if callback?
