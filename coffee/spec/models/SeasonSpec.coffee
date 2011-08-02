describe "Season model", ->
	tvShowModel = xbmc.models.TvShow
	seasonModel = xbmc.models.Season

	beforeEach ->
		tvShowModel.deleteAll()
		seasonModel.deleteAll()

	it "can load seasons", ->
		loaded = no
		tvShowModel.bind "refresh", ->
			loaded = yes

		seasonModel.bind "refresh", ->
			loaded = yes

		tvShowModel.load()

		waitsFor ->
			loaded
		,   "tvshows to load"
		
		runs ->
			loaded = no
			seasonModel.load tvShowModel.first().id

		waitsFor ->
			loaded
		,   "seasons to load"

		runs ->
			expect(seasonModel.all().length).not.toEqual(0)
			firstSeason = seasonModel.first()
			expect(firstSeason.title).not.toBeNull()
			expect(firstSeason.tvshowid).not.toBeNull()
			expect(firstSeason.number).not.toBeNull()
			expect(firstSeason.thumb).not.toBeNull()
			