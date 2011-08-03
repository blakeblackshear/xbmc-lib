describe "Song model", ->
	artistModel = xbmc.models.Artist
	albumModel = xbmc.models.Album
	songModel = xbmc.models.Song

	beforeEach ->
		artistModel.deleteAll()
		albumModel.deleteAll()
		songModel.deleteAll()

	it "can load songs", ->
		loaded = no
		artistModel.bind "refresh", ->
			loaded = yes

		albumModel.bind "refresh", ->
			loaded = yes

		songModel.bind "refresh", ->
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
			loaded = no
			songModel.load artistModel.first().id, albumModel.first().id

		waitsFor ->
			loaded
		,   "songs to load"

		runs ->
			expect(songModel.all().length).not.toEqual(0)
			firstSong = songModel.first()
			expect(firstSong.artist).not.toBeNull()
			expect(firstSong.album).not.toBeNull()
			expect(firstSong.title).not.toBeNull()
			expect(firstSong.thumb).not.toBeNull()
			expect(firstSong.fanart).not.toBeNull()
