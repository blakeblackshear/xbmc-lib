namespace "xbmc.models", (exports) ->
	exports.Movie = Spine.Model.setup "Movie", ["title", "year", "plot", "thumb", "file"]

	exports.Movie.extend
		load: (settings, callback) ->
			@.deleteAll()

			videoLibrary = new xbmc.lib.VideoLibrary(settings)
			videoLibrary.getMovies
				fields: ["year", "genre"]
				, 
				(data) =>
					for movie in data.movies
						m = @.init
								id: movie.id
								title: movie.title
								year: movie.year
								thumb: movie.thumb
								file: movie.file
						m.save();
					@.trigger("refresh");