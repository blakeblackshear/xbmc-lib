describe "Episode model", ->
	tvShowModel = xbmc.models.TvShow
	seasonModel = xbmc.models.Season
	episodeModel = xbmc.models.Episode

	beforeEach ->
		tvShowModel.deleteAll()
		seasonModel.deleteAll()
		episodeModel.deleteAll()

	it "can load episodes", ->
		loaded = no
		tvShowModel.bind "refresh", ->
			loaded = yes

		seasonModel.bind "refresh", ->
			loaded = yes

		episodeModel.bind "refresh", ->
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
			loaded = no
			episodeModel.load tvShowModel.first().id, seasonModel.first().number

		waitsFor ->
			loaded
		,   "episodes to load"

		runs ->
			expect(episodeModel.all().length).not.toEqual(0)
			firstEpisode = episodeModel.first()
			expect(firstEpisode.title).not.toBeNull()
			expect(firstEpisode.tvshowid).not.toBeNull()
			expect(firstEpisode.season).not.toBeNull()
			expect(firstEpisode.thumb).not.toBeNull()
			expect(firstEpisode.fanart).not.toBeNull()
