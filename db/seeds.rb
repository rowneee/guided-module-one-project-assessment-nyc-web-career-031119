luis = Viewer.create(name: "Luis")
joe = Viewer.create(name: "Joe")
mary = Viewer.create(name: "Mary")

famguy = TvShow.create(name: "Family Guy", weekday: "Sunday", genre: "Comedy")
office = TvShow.create(name: "The Office", weekday: "Monday", genre: "Comedy")
rick_morty = TvShow.create(name: "Rick and Morty", weekday: "Tuesday", genre: "Comedy")
shameless = TvShow.create(name: "Shameless", weekday: "Wednesday", genre: "Comedy")
big_mouth = TvShow.create(name: "Big Mouth", weekday: "Thursday", genre: "Comedy")

greys = TvShow.create(name: "Grey's Anatomy", weekday: "Sunday", genre: "Drama")
scandal = TvShow.create(name: "Scandal", weekday: "Monday", genre: "Drama")
handmaid = TvShow.create(name: "The Handmaid's Tale", weekday: "Tuesday", genre: "Drama")
black_mirror = TvShow.create(name: "Black Mirror", weekday: "Wednesday", genre: "Drama")
this_is_us = TvShow.create(name: "This is Us", weekday: "Thursday", genre: "Drama")

got = TvShow.create(name: "Game of Thrones", weekday: "Sunday", genre: "Action")
westworld = TvShow.create(name: "Westworld", weekday: "Monday", genre: "Action")
svu = TvShow.create(name: "Law and Order: Special Victims Unit", weekday: "Tuesday", genre: "Action")
criminal_minds = TvShow.create(name: "Criminal Minds", weekday: "Wednesday", genre: "Action")
sons = TvShow.create(name: "Sons of Anarchy", weekday: "Thursday", genre: "Action")

glee = TvShow.create(name: "Glee", weekday: "Sunday", genre: "Romance")
vampire = TvShow.create(name: "The Vampire Diaries", weekday: "Monday", genre: "Romance")
once_upon = TvShow.create(name: "Once Upon a Time", weekday: "Tuesday", genre: "Romance")
himym = TvShow.create(name: "How I Met Your Mother", weekday: "Wednesday", genre: "Romance")
true_blood = TvShow.create(name: "True Blood", weekday: "Thursday", genre: "Romance")

vs1 = ViewerShow.create(viewer_id: Viewer.all.sample.id, tvshow_id: TvShow.all.sample.id, rating: 9.2)
vs2 = ViewerShow.create(viewer_id: Viewer.all.sample.id, tvshow_id: TvShow.all.sample.id, rating: 8.6)
vs3 = ViewerShow.create(viewer_id: Viewer.all.sample.id, tvshow_id: TvShow.all.sample.id, rating: 7.4)

puts "byyee"
