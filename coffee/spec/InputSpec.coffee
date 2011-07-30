describe "Input", ->
	input = null

	makeCall = (method) ->
		results = null
		done = no

		input[method] (data) ->
			done = yes
			results = data

		waitsFor ->
			done
		
		runs ->
			expect(results).not.toBeNull()

	beforeEach ->
		input = new xbmc.lib.Input()
	
	it "can go back", ->
		makeCall "back"
	
	it "can go down", ->
		makeCall "down"
	
	it "can go left", ->
		makeCall "left"
	
	it "can go right", ->
		makeCall "right"
	
	it "can go up", ->
		makeCall "up"
	
	it "can go home", ->
		makeCall "home"
	
	it "can select", ->
		makeCall "select"