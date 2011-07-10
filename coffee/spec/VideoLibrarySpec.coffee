describe "VideoLibrary", ->
	videoLibrary = null
	beforeEach ->
		videoLibrary = new VideoLibrary({})
	it "should be able to get movies", ->
		movies = null
		done = no
		videoLibrary.getMovies
			"fields": ["year", "genre"]
			,
			(data) ->
				movies = data
				done = yes
		waitsFor ->
			done
		runs ->
			expect(movies).not.toBeNull()
			for movie in movies
				expect(movie.year).not.toBeNull() 
				expect(movie.genre).not.toBeNull() 
	it "should be able to get tvshows", ->
		tvshows = null
		done = no
		videoLibrary.getTvShows {}, (data) ->
			tvshows = data
			done = yes
		waitsFor ->
			done
		runs ->
			expect(tvshows).not.toBeNull()
	it "should be able to get all seasons", ->
		seasons = null
		done = no
		videoLibrary.getSeasons {}, (data) ->
			seasons = data
			done = yes
		waitsFor ->
			done
		runs ->
			expect(seasons).not.toBeNull()			
	it "should be able to get all epsiodes", ->
		episodes = null
		done = no
		videoLibrary.getEpisodes {}, (data) ->
			episodes = data
			done = yes
		waitsFor ->
			done
		runs ->
			expect(episodes).not.toBeNull()