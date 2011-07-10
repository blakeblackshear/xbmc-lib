describe "Audio Library", ->
	audioLibrary = null

	beforeEach ->
		audioLibrary = new AudioLibrary()

	it "should be able to get artists", ->
		artists = null
		done = no
		audioLibrary.getArtists {}, (data) ->
			artists = data.artists
			done = yes
		waitsFor ->
			done
		runs ->
			expect(artists).not.toBeNull()

	it "should be able to get all albums", ->
		albums = null
		done = no
		audioLibrary.getAlbums {}, (data) ->
			albums = data.albums
			done = yes
		waitsFor ->
			done
		runs ->
			expect(albums).not.toBeNull()

	it "should be able to get all songs", ->
		songs = null
		done = no
		audioLibrary.getSongs {}, (data) ->
			songs = data.songs
			done = yes
		waitsFor ->
			done
		runs ->
			expect(songs).not.toBeNull()
