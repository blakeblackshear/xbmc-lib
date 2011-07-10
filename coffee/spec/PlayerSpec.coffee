describe "Player", ->
	it "should be able to be a video player", ->
		player = new Player({}, "Video");
		expect(player.type).toEqual("Video");
	it "should be able to be an audio player", ->
		player = new Player({}, "Audio");
		expect(player.type).toEqual("Audio");