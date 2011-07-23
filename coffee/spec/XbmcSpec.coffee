describe "Xbmc", ->
	xbmc = null

	beforeEach ->
		xbmc = new Xbmc()
	
	it "can get volume", ->
		results = null
		done = no

		xbmc.getVolume (data) ->
			done = yes
			results = data
		
		waitsFor ->
			done
		
		runs ->
			expect(results).not.toBeNull()

	it "can set volume", ->
		results = null
		done = no

		xbmc.setVolume 63, (data) ->
			done = yes
			results = data

		waitsFor ->
			done
		
		runs ->
			expect(results).not.toBeNull()