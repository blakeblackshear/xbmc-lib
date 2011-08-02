describe "TvShow model", ->
	tvShowModel = xbmc.models.TvShow

	beforeEach ->
		tvShowModel.deleteAll()

	it "can load tvshows", ->
		tvShowModel.load()

		waitsFor ->
			tvShowModel.all().length != 0
		,   "tvshows to load"
		
		runs ->
			expect(tvShowModel.all().length).not.toEqual(0)
			firstMovie = tvShowModel.first()
			expect(firstMovie.title).not.toBeNull()
			expect(firstMovie.year).not.toBeNull()
			expect(firstMovie.thumb).not.toBeNull()
			expect(firstMovie.file).not.toBeNull()
	it "can notify you when all shows are refreshed", ->
		refreshed = no
		tvShowModel.bind "refresh", ->
			refreshed = yes
		
		tvShowModel.load()

		waitsFor ->
			refreshed
		,   "tvshows to load"
	it "can notify you when a show changes", ->
		changed = no
		tvShowModel.bind "change", ->
			changed = yes

		loaded = no
		tvShowModel.bind "refresh", ->
			loaded = yes

		tvShowModel.load()

		waitsFor ->
			loaded
		,   "tvshows to load"

		runs ->
			tvShowModel.first().title = "New Title"

		waitsFor ->
			changed
		,   "change notification"