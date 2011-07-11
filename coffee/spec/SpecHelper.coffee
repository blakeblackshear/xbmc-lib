class XbmcRequest
	constructor: (options) ->
		switch options.method
			when "VideoLibrary.GetMovies" then options.callback @mockmovies
			when "VideoLibrary.GetTVShows" then options.callback @mocktvshows
			when "VideoLibrary.GetSeasons" then options.callback @mockseasons
			when "VideoLibrary.GetEpisodes" then options.callback @mockepisodes
			when "AudioLibrary.GetArtists" then options.callback @mockartists
			when "AudioLibrary.GetAlbums" then options.callback @mockalbums
			when "AudioLibrary.GetSongs" then options.callback @mocksongs else options.callback {}

	mockmovies:
                movies:[
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/a5fead17.tbn"
                        "file": "C:\\Users\\Blake\\Videos\\Fake Movies\\8½ (1963).flv"
                        "genre": "Drama / Fantasy"
                        "label": "8½"
                        "movieid": 1
                        "thumbnail": "special://masterprofile/Thumbnails/Video/a/a5fead17.tbn"
                        "year": 1963
                ,
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/cd395913.tbn"
                        "file": "C:\\Users\\Blake\\Videos\\Fake Movies\\12 Angry Men (1957).flv"
                        "genre": "Drama / Mystery"
                        "label": "12 Angry Men"
                        "movieid": 2
                        "thumbnail": "special://masterprofile/Thumbnails/Video/c/cd395913.tbn"
                        "year": 1957
                ,
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/3f350215.tbn"
                        "file": "C:\\Users\\Blake\\Videos\\Fake Movies\\A Clockwork Orange (1971).flv"
                        "genre": "Crime / Foreign / Science Fiction"
                        "label": "A Clockwork Orange"
                        "movieid": 3
                        "thumbnail": "special://masterprofile/Thumbnails/Video/3/3f350215.tbn"
                        "year": 1971
                ,
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/bac12aa2.tbn"
                        "file": "C:\\Users\\Blake\\Videos\\Fake Movies\\A Streetcar Named Desire (1951).flv"
                        "genre": "Drama"
                        "label": "A Streetcar Named Desire"
                        "movieid": 4
                        "thumbnail": "special://masterprofile/Thumbnails/Video/b/bac12aa2.tbn"
                        "year": 1951
                ,
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/423cb649.tbn"
                        "file": "C:\\Users\\Blake\\Videos\\Fake Movies\\Aliens (1986).flv"
                        "genre": "Action / Adventure / Science Fiction / Thriller"
                        "label": "Aliens"
                        "movieid": 5
                        "thumbnail": "special://masterprofile/Thumbnails/Video/4/423cb649.tbn"
                        "year": 1986
                ,
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/004cef64.tbn"
                        "file": "C:\\Users\\Blake\\Videos\\Fake Movies\\Alien (1979).flv"
                        "genre": "Action / Adventure / Horror / Science Fiction / Thriller"
                        "label": "Alien"
                        "movieid": 6
                        "thumbnail": "special://masterprofile/Thumbnails/Video/0/004cef64.tbn"
                        "year": 1979
                ,
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/847b14dc.tbn"
                        "file": "C:\\Users\\Blake\\Videos\\Fake Movies\\All About Eve (1950).flv"
                        "genre": "Comedy / Drama"
                        "label": "All About Eve"
                        "movieid": 7
                        "thumbnail": "special://masterprofile/Thumbnails/Video/8/847b14dc.tbn"
                        "year": 1950
                ,
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/d06ed2a1.tbn"
                        "file": "C:\\Users\\Blake\\Videos\\Fake Movies\\All Quiet on the Western Front (1930).flv"
                        "genre": "Action / Adventure / Drama / History"
                        "label": "All Quiet on the Western Front"
                        "movieid": 8
                        "thumbnail": "special://masterprofile/Thumbnails/Video/d/d06ed2a1.tbn"
                        "year": 1930
                ,
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/e5d542ec.tbn"
                        "file": "C:\\Users\\Blake\\Videos\\Fake Movies\\Amadeus (1984).flv"
                        "genre": "Drama / History / Music"
                        "label": "Amadeus"
                        "movieid": 9
                        "thumbnail": "special://masterprofile/Thumbnails/Video/e/e5d542ec.tbn"
                        "year": 1984
                ,
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/6535ac34.tbn"
                        "file": "C:\\Users\\Blake\\Videos\\Fake Movies\\American Beauty (1999).flv"
                        "genre": "Comedy / Drama"
                        "label": "American Beauty"
                        "movieid": 10
                        "thumbnail": "special://masterprofile/Thumbnails/Video/6/6535ac34.tbn"
                        "year": 1999
                ,
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/7e6a40af.tbn"
                        "file": "C:\\Users\\Blake\\Videos\\Fake Movies\\American History X (1998).flv"
                        "genre": "Action / Crime / Drama"
                        "label": "American History X"
                        "movieid": 11
                        "thumbnail": "special://masterprofile/Thumbnails/Video/7/7e6a40af.tbn"
                        "year": 1998
                ]
        mocktvshows:
                tvshows: [
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/67e9d9f4.tbn"
                        "label": "24"
                        "thumbnail": "special://masterprofile/Thumbnails/Video/6/67e9d9f4.tbn"
                        "tvshowid": 1
                ,
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/748c76c5.tbn"
                        "label": "Dexter"
                        "thumbnail": "special://masterprofile/Thumbnails/Video/7/748c76c5.tbn"
                        "tvshowid": 2
                ,
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/c2d67599.tbn"
                        "label": "Entourage"
                        "thumbnail": "special://masterprofile/Thumbnails/Video/c/c2d67599.tbn"
                        "tvshowid": 3
                ,
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/30b63423.tbn"
                        "label": "South Park"
                        "thumbnail": "special://masterprofile/Thumbnails/Video/3/30b63423.tbn"
                        "tvshowid": 4
                ,
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/63a5c8c0.tbn"
                        "label": "Weeds"
                        "thumbnail": "special://masterprofile/Thumbnails/Video/6/63a5c8c0.tbn"
                        "tvshowid": 5
                ]
        mockseasons: 
                seasons: [
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/67e9d9f4.tbn"
                        "label": "Season 1"
                        "season": 1
                        "thumbnail": "special://masterprofile/Thumbnails/Video/0/055970c3.tbn"
                ,
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/67e9d9f4.tbn"
                        "label": "Season 2"
                        "season": 2
                        "thumbnail": "special://masterprofile/Thumbnails/Video/0/081a561a.tbn"
                ,
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/67e9d9f4.tbn"
                        "label": "Season 3"
                        "season": 3
                        "thumbnail": "special://masterprofile/Thumbnails/Video/0/0cdb4bad.tbn"
                ]
        mockepisodes: 
                episodes: [
                        "episodeid": 1
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/ebbb7c1c.tbn"
                        "file": "C:\\Users\\Blake\\Videos\\Fake TV Shows\\24\\24 101.flv"
                        "label": "Day 1 - 12:00 A.M.-1:00 A.M."
                        "thumbnail": "special://masterprofile/Thumbnails/Video/b/b6d6b63e.tbn"
                ,
                        "episodeid": 2
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/e6f85ac5.tbn"
                        "file": "C:\\Users\\Blake\\Videos\\Fake TV Shows\\24\\24 102.flv"
                        "label": "Day 1 - 1:00 A.M.-2:00 A.M."
                        "thumbnail": "special://masterprofile/Thumbnails/Video/6/6dc11ea9.tbn"
                ,
                        "episodeid": 3
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/e2394772.tbn"
                        "file": "C:\\Users\\Blake\\Videos\\Fake TV Shows\\24\\24 103.flv"
                        "label": "Day 1 - 2:00 A.M.-3:00 A.M."
                        "thumbnail": "special://masterprofile/Thumbnails/Video/2/24cc7924.tbn"
                ,
                        "episodeid": 4
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/fc7e1777.tbn"
                        "file": "C:\\Users\\Blake\\Videos\\Fake TV Shows\\24\\24 105.flv"
                        "label": "Day 1 - 4:00 A.M.-5:00 A.M."
                        "thumbnail": "special://masterprofile/Thumbnails/Video/9/962235bd.tbn"
                ,
                        "episodeid": 5
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/f8bf0ac0.tbn"
                        "file": "C:\\Users\\Blake\\Videos\\Fake TV Shows\\24\\24 106.flv"
                        "label": "Day 1 - 5:00 A.M.-6:00 A.M."
                        "thumbnail": "special://masterprofile/Thumbnails/Video/4/4d359d2a.tbn"
                ,
                        "episodeid": 6
                        "fanart": "special://masterprofile/Thumbnails/Video/Fanart/f5fc2c19.tbn"
                        "file": "C:\\Users\\Blake\\Videos\\Fake TV Shows\\24\\24 107.flv"
                        "label": "Day 1 - 6:00 A.M.-7:00 A.M."
                        "thumbnail": "special://masterprofile/Thumbnails/Video/0/0438faa7.tbn"
                ]
    mockartists: 
                artists: [
                        "artistid": 1
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/e9484552.tbn"
                        "label": "Band of Horses"
                ,
                        "artistid": 2
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "label": "Brian Regan"
                ,
                        "artistid": 3
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/f2494f01.tbn"
                        "label": "Cake"
                ]
        mockalbums: 
                albums: [
                        "album_artist": "Band of Horses"
                        "album_genre": "Alternative"
                        "albumid": 1
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/e9484552.tbn"
                        "label": "Cease to Begin"
                        "thumbnail": "special://masterprofile/Thumbnails/Music/e/e3fc31b8.tbn"
                        "year": 2007
                ,
                        "album_artist": "Brian Regan"
                        "album_genre": "Comedy"
                        "albumid": 2
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "label": "Live"
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                        "year": 1997
                ,
                        "album_artist": "Cake"
                        "album_genre": "Pop"
                        "albumid": 3
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/f2494f01.tbn"
                        "label": "Prolonging the Magic"
                        "thumbnail": "special://masterprofile/Thumbnails/Music/5/5230f5bb.tbn"
                        "year": 1998
                ]
        mocksongs: 
                songs: [
                        "album": "Cease to Begin"
                        "artist": "Band of Horses"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/e9484552.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Band of Horses\\Cease to Begin\\Band of Horses-The General Specific.mp3"
                        "label": "The General Specific"
                        "songid": 1
                        "thumbnail": "special://masterprofile/Thumbnails/Music/e/e3fc31b8.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Animals.mp3"
                        "label": "Animals"
                        "songid": 2
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Belly Buttons.mp3"
                        "label": "Belly Buttons"
                        "songid": 3
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Big Family Stuff.mp3"
                        "label": "Big Family Stuff"
                        "songid": 4
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Blasting Zone.mp3"
                        "label": "Blasting Zone"
                        "songid": 5
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Crank Calls.mp3"
                        "label": "Crank Calls"
                        "songid": 6
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Dog Barking.mp3"
                        "label": "Dog Barking"
                        "songid": 7
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Donut Lady.mp3"
                        "label": "Donut Lady"
                        "songid": 8
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Elevators & Faces.mp3"
                        "label": "Elevators & Faces"
                        "songid": 9
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Evel Knievel.mp3"
                        "label": "Evel Knievel"
                        "songid": 10
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Fishing on T.V.mp3"
                        "label": "Fishing on T.V."
                        "songid": 11
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Flipper & Gentle Ben.mp3"
                        "label": "Flipper & Gentle Ben"
                        "songid": 12
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Health Club Stuff.mp3"
                        "label": "Health Club Stuff"
                        "songid": 13
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Hooked on Phonix.mp3"
                        "label": "Hooked on Phonix"
                        "songid": 14
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Horns & Windsheilds.mp3"
                        "label": "Horns & Windsheilds"
                        "songid": 15
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Kid's Party Games.mp3"
                        "label": "Kid's Party Games"
                        "songid": 16
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Log Trucks.mp3"
                        "label": "Log Trucks"
                        "songid": 17
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Lousy in Little League.mp3"
                        "label": "Lousy in Little League"
                        "songid": 18
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Monster Truck Drivers.mp3"
                        "label": "Monster Truck Drivers"
                        "songid": 19
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Peanut Butter & Jelly.mp3"
                        "label": "Peanut Butter & Jelly"
                        "songid": 20
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Seatbelts.mp3"
                        "label": "Seatbelts"
                        "songid": 21
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Spider Webs & Bees.mp3"
                        "label": "Spider Webs & Bees"
                        "songid": 22
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Stupid in School.mp3"
                        "label": "Stupid in School"
                        "songid": 23
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-Whale Noises.mp3"
                        "label": "Whale Noises"
                        "songid": 24
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Live"
                        "artist": "Brian Regan"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/a6bae827.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Brian Regan\\Live\\Brian Regan-You Too & Stuff.mp3"
                        "label": "You Too & Stuff"
                        "songid": 25
                        "thumbnail": "special://masterprofile/Thumbnails/Music/c/c0b7c84c.tbn"
                ,
                        "album": "Prolonging the Magic"
                        "artist": "Cake"
                        "fanart": "special://masterprofile/Thumbnails/Music/Fanart/f2494f01.tbn"
                        "file": "C:\\Users\\Blake\\Music\\Cake\\Prolonging the Magic\\Cake-Sheep Go to Heaven.mp3"
                        "label": "Sheep Go to Heaven"
                        "songid": 26
                        "thumbnail": "special://masterprofile/Thumbnails/Music/5/5230f5bb.tbn"
                ]

window.XbmcRequest = XbmcRequest