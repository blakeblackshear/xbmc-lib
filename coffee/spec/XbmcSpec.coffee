describe "Xbmc", ->
	xbmcTest = null

	beforeEach ->
		xbmcTest = new xbmc.lib.Xbmc()
	
	it "can get volume", ->
		results = null
		done = no

		xbmcTest.getVolume (data) ->
			done = yes
			results = data
		
		waitsFor ->
			done
		
		runs ->
			expect(results).not.toBeNull()

	it "can set volume", ->
		results = null
		done = no

		xbmcTest.setVolume 63, (data) ->
			done = yes
			results = data

		waitsFor ->
			done
		
		runs ->
			expect(results).not.toBeNull()