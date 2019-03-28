luis = Viewer.create(name: "Luis")
joe = Viewer.create(name: "Joe")
mary = Viewer.create(name: "Mary")

famguy = TvShow.create(name: "Family Guy", weekday: "Sunday", genre: "Comedy", summary: "Meet the Griffins, a family of six that deals with every day family issues in a very less than “normal” way. This is the show you watch when you want to know all of the ways of being politically incorrect." )
office = TvShow.create(name: "The Office", weekday: "Monday", genre: "Comedy", summary: "Like Steve Carell? Like laughing until your stomach hurts? The Office shows you all of the ways you cannot behave in a professional setting.")
rick_morty = TvShow.create(name: "Rick and Morty", weekday: "Tuesday", genre: "Comedy", summary: "An adult animation that makes you feel smart by giving you the false impression that you actually understand science.....")
shameless = TvShow.create(name: "Shameless", weekday: "Wednesday", genre: "Comedy", summary: "This is series is about a drunk dad and a family of seven finding clever ways to survive while trying to live a “normal” life.")
big_mouth = TvShow.create(name: "Big Mouth", weekday: "Thursday", genre: "Comedy", summary: "Big Mouth takes you through the cringing experiences of puberty one Hormone Monster at a time. Through thick and this these pre-teens work together to overcome the obstacles of pube-r-ty.")

greys = TvShow.create(name: "Grey's Anatomy", weekday: "Sunday", genre: "Drama", summary: "Doctors, “saving lives” and living the most drama-filled life at the same time. Every doctor here actually has a life, a life that consists of sleeping around with other doctors and drinking..." )
scandal = TvShow.create(name: "Scandal", weekday: "Monday", genre: "Drama", summary: "This show probably depicts all of the SCANDALS in the government that do not get exposed. You can either love it or hate it. give it a try on Netflix.")
handmaid = TvShow.create(name: "The Handmaid's Tale", weekday: "Tuesday", genre: "Drama", summary: "The dystopian tale you didn’t even know you were missing. Imagine a world where you are a woman and you’re not treated as an equal..............................")
black_mirror = TvShow.create(name: "Black Mirror", weekday: "Wednesday", genre: "Drama", summary: "Ever seen The Twilight Zone???? Well this show takes the Twilight Zone and mind-f****’s you 100000 times more, forcing you to overanalyze and dissect every aspect of our modern society. This science fiction anthology will really make you want to crawl into a hole and never interact with another human being every again.")
this_is_us = TvShow.create(name: "This is Us", weekday: "Thursday", genre: "Drama", summary: "If you’re tryna cry, This is Us is the show for you. Think drama but with the volume turned up to 100. This is Us follows the lives of a family that somehow experiences every tragedy you could ever think of. Think you’re life is s***? Think again!")

got = TvShow.create(name: "Game of Thrones", weekday: "Sunday", genre: "Bulls*** Action Show", summary: "One word: INCEST." )
westworld = TvShow.create(name: "Westworld", weekday: "Monday", genre: "Bulls*** Action Show", summary: "Westworld is a show about rich people gaining amusement through interaction with robots in a western-themed park. The rich people have the freedom to do anything they please. This show has violence, sex, and most importantly - a love story between robots…HOW ROMANTIC <3 <3")
svu = TvShow.create(name: "Law and Order: Special Victims Unit", weekday: "Tuesday", genre: "Bulls*** Action Show", summary: "The worst acting you will ever see!!! Every episode follows a different story investigated but the Special Victims Unit that will make you feel extremely sad. After watching one episode, you will know the entire intro by heart. *”…In New York City, the dedicated detectives who investigate these vicious felonies are members of an elite squad known as the Special Victims Unit. These are their stories…dooo dooo dooo dooo dooooo")
criminal_minds = TvShow.create(name: "Criminal Minds", weekday: "Wednesday", genre: "Bulls*** Action Show", summary: "Criminal investigation show, much like NCIS, but with hotter characters." )
sons = TvShow.create(name: "Sons of Anarchy", weekday: "Thursday", genre: "Bulls*** Action Show", summary: "There’s death everywhere, all the time. This show is about a group of bikers who break every single law in the book and get away with it.
")

glee = TvShow.create(name: "Glee", weekday: "Sunday", genre: "Random Trash TV Show", summary: "Kids. In High School. Turning Everything. Into a song." )
vampire = TvShow.create(name: "The Vampire Diaries", weekday: "Monday", genre: "Random Trash TV Show", summary: "Do you like Twilight? Then pick another show, because these Vampires don’t sparkle and are not loyal to each other.")
once_upon = TvShow.create(name: "Once Upon a Time", weekday: "Tuesday", genre: "Random Trash TV Show", summary: "Ever try to imagine your girl Snow White living in the real world? Well this is the show for you. Snow and all her friends are hopping around a random town living their lives just how you imagined. Don’t worry though, Snow is not as innocent as you’d think.." )
himym = TvShow.create(name: "How I Met Your Mother", weekday: "Wednesday", genre: "Random Trash TV Show", summary: "If you feel bad about your dating life, watch this show to remind yourself that its impossible to find the one.")
true_blood = TvShow.create(name: "True Blood", weekday: "Thursday", genre: "Random Trash TV Show", summary: "Vampires & Blood & Sex & A girl with a gap in her teeth" )

vs1 = ViewerShow.create(viewer_id: Viewer.all.sample.id, tv_show_id: TvShow.all.sample.id, rating: 9.2)
vs2 = ViewerShow.create(viewer_id: Viewer.all.sample.id, tv_show_id: TvShow.all.sample.id, rating: 8.6)
vs3 = ViewerShow.create(viewer_id: Viewer.all.sample.id, tv_show_id: TvShow.all.sample.id, rating: 7.4)

puts "byyee"
