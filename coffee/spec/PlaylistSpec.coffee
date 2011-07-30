describe "Playlist", ->
	it "should be able to be a video playlist", ->
		playlist = new xbmc.lib.Playlist({}, "Video");
		expect(playlist.type).toEqual("Video");
	it "should be able to be an audio playlist", ->
		playlist = new xbmc.lib.Playlist({}, "Audio");
		expect(playlist.type).toEqual("Audio");