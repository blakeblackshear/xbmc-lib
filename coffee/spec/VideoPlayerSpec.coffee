describe "VideoPlayer", ->
	videoPlayer = null

	makeCall = (method, params) ->
		results = null
		done = no

		videoPlayer[method] params, (data) ->
			done = yes
			results = data

		waitsFor ->
			done
		
		runs ->
			expect(results).not.toBeNull()

	beforeEach ->
		videoPlayer = new xbmc.lib.VideoPlayer()

	it "can take a big skip backward", ->
		makeCall "bigSkipBackward", {}

	it "can take a big skip forward", ->
		makeCall "bigSkipForward", {}

	it "can go forward", ->
		makeCall "forward", {}

	it "can get the current percentage", ->
		makeCall "getPercentage", {}

	it "can get the time", ->
		makeCall "getTime", {}

	it "can play or pause", ->
		makeCall "playPause", {}

	it "can rewind", ->
		makeCall "rewind", {}

	it "can seek to a percentage", ->
		makeCall "seekPercentage", {}

	it "can seek to a time", ->
		makeCall "seekTime", {}

	it "can skip to the next item", ->
		makeCall "skipNext", {}

	it "can skip to the previous item", ->
		makeCall "skipPrevious", {}

	it "can take a small skip backward", ->
		makeCall "smallSkipBackward", {}

	it "can take a small skip forward", ->
		makeCall "smallSkipForward", {}

	it "can get the current state", ->
		makeCall "state", {}

	it "can stop", ->
		makeCall "stop", {}
