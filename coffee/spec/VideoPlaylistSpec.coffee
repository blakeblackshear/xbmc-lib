describe "VideoPlaylist", ->
	videoPlaylist = null

	makeCall = (params, method) ->
		results = null
		done = no

		videoPlaylist[method] (params, data) ->
			done = yes
			results = data

		waitsFor ->
			done
		
		runs ->
			expect(results).not.toBeNull()

	beforeEach ->
		videoPlaylist = new xbmc.lib.VideoPlaylist()

	it "can add an item", ->
		results = null
		done = no

		videoPlaylist.add [], (params, data) ->
			done = yes
			results = data

		waitsFor ->
			done
		
		runs ->
			expect(results).not.toBeNull()

	it "can clear all items", ->
		makeCall {}, "clear"

	it "can get items", ->
		results = null
		done = no

		videoPlaylist.getItems null, null, null, (params, data) ->
			done = yes
			results = data

		waitsFor ->
			done
		
		runs ->
			expect(results).not.toBeNull()

	it "can insert an item", ->
		results = null
		done = no

		videoPlaylist.insert null, null, (params, data) ->
			done = yes
			results = data

		waitsFor ->
			done
		
		runs ->
			expect(results).not.toBeNull()

	it "can play an item", ->
		makeCall {}, "play"

	it "can remove an item", ->
		results = null
		done = no

		videoPlaylist.remove null, (params, data) ->
			done = yes
			results = data

		waitsFor ->
			done
		
		runs ->
			expect(results).not.toBeNull()

	it "can shuffle the items", ->
		makeCall {}, "shuffle"

	it "can skip to the next item", ->
		makeCall {}, "skipNext"

	it "can skip to the previous item", ->
		makeCall {}, "skipPrevious"

	it "can unshuffle the items", ->
		makeCall {}, "unShuffle"
