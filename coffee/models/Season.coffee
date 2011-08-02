namespace "xbmc.models", (exports) ->
	exports.Season = Spine.Model.setup "Season", ["tvshowid", "number", "title", "thumb", "fanart"]

	exports.Season.extend
		load: (tvshowid, settings, callback) ->
			@.deleteAll()

			videoLibrary = new xbmc.lib.VideoLibrary(settings)
			videoLibrary.getSeasons
				fields: ["season"]
				tvshowid: tvshowid
				, 
				(data) =>
					for season in data.seasons
						s = @.init
							title: season.label
							tvshowid: tvshowid
							number: season.season
							thumb: season.thumbnail
							fanart: season.fanart
						s.save();
					@.trigger "refresh"
					callback() if callback?

