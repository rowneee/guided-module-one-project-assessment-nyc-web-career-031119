luis = Viewer.create(name: "Luis")
joe = Viewer.create(name: "Joe")
mary = Viewer.create(name: "Mary")

got = TvShow.create(name: "Game of Thrones", weekday: "Sunday", genres: "Drama")
simpsons = TvShow.create(name: "The Simpsons", weekday: "Sunday", genres: "Comedy")
twofour = TvShow.create(name: "24", weekday: "Monday", genres: "Action")

vs1 = ViewerShow.create(viewer_id: Viewer.all.sample.id, tvshow_id: TvShow.all.sample.id, rating: 9.2)
vs2 = ViewerShow.create(viewer_id: Viewer.all.sample.id, tvshow_id: TvShow.all.sample.id, rating: 8.6)
vs3 = ViewerShow.create(viewer_id: Viewer.all.sample.id, tvshow_id: TvShow.all.sample.id, rating: 7.4)

puts "byyee"
