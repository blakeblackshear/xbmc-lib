describe "Album model", ->
	artistModel = xbmc.models.Artist
	albumModel = xbmc.models.Album

	beforeEach ->
		artistModel.deleteAll()
		albumModel.deleteAll()

	it "can load albums", ->
		loaded = no
		artistModel.bind "refresh", ->
			loaded = yes

		albumModel.bind "refresh", ->
			loaded = yes

		artistModel.load()

		waitsFor ->
			loaded
		,   "artists to load"
		
		runs ->
			loaded = no
			albumModel.load artistModel.first().id

		waitsFor ->
			loaded
		,   "albums to load"

		runs ->
			expect(albumModel.all().length).not.toEqual(0)
			firstAlbum = albumModel.first()
			expect(firstAlbum.title).not.toBeNull()
			expect(firstAlbum.artist).not.toBeNull()
			expect(firstAlbum.year).not.toBeNull()
			expect(firstAlbum.thumb).not.toBeNull()
			expect(firstAlbum.fanart).not.toBeNull()
			