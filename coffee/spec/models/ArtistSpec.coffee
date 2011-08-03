describe "Artist model", ->
	artistModel = xbmc.models.Artist

	beforeEach ->
		artistModel.deleteAll()

	it "can load artists", ->
		refreshed = no
		artistModel.bind "refresh", ->
			refreshed = yes
		
		artistModel.load()

		waitsFor ->
			refreshed
		,   "artists to load"

		runs ->
			expect(artistModel.all().length is 0).toBeFalsy()