describe "Movie model", ->
	movieModel = xbmc.models.Movie

	beforeEach ->
		movieModel.deleteAll()

	it "can load movies", ->
		movieModel.load()

		waitsFor ->
			movieModel.all().length != 0
		,   "movies to load"
		
		runs ->
			expect(movieModel.all().length).not.toEqual(0)
			firstMovie = movieModel.first()
			expect(firstMovie.title).not.toBeNull()
			expect(firstMovie.year).not.toBeNull()
			expect(firstMovie.thumb).not.toBeNull()
			expect(firstMovie.file).not.toBeNull()

	it "will notify you when all movies are loaded", ->
		refreshed = no
		movieModel.bind "refresh", ->
			refreshed = yes
		
		movieModel.load()

		waitsFor ->
			refreshed
		,   "movies to load"

	it "will notify you if a movie changes", ->
		changed = no
		movieModel.bind "change", ->
			changed = yes

		loaded = no
		movieModel.bind "refresh", ->
			loaded = yes

		movieModel.load()

		waitsFor ->
			loaded
		,   "movies to load"

		runs ->
			movieModel.first().title = "New Title"

		waitsFor ->
			changed
		,   "change notification"