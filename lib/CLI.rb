require 'pry'
require 'audite'
class CommandLineInterface

  attr_accessor :current_viewer, :current_tv_show, :yes_no, :tv
  def initialize
    @current_viewer = nil
  end

  def start
      graphic
      login_greeting
      input = gets.chomp
    while true
      user_input_list_of_shows(input)
    end
  end

  def login_greeting
    puts "                               Welcome to Gitflix. Your best guide to trash TV."
    puts "                                     Please enter your name to login:"
    line_break
    login
  end

  def login
    viewer_name = gets.chomp
    # if !valid?(viewer_name)
    @current_viewer = Viewer.find_by(name: viewer_name)
    line_break
    if @current_viewer
      puts "Welcome back, #{@current_viewer.name}"
    elsif @current_viewer = Viewer.create(name: viewer_name)
      puts "Welcome #{viewer_name}. We hate you."
    end
    greet
  end


  def greet
    line_break
    puts "How you feeling today?"
    puts "1. Annoyed" # corresponds to a genre
    puts "2. Still searching for friends" # corresponds to a genre
    puts "3. OVER IT" # corresponds to a genre
    puts "4. Honestly no idea" # gives you a list of genre
    puts "5. BAMBOOZLED" #fyre
    line_break
  end


  def mood
    line_break
    mood_input = gets.chomp
  end

  def validate_input(input)
    if input == "1" || input == "2" || input == "3" || input == "4" || input == "5" || input == "n"
      true
    end
  end

  def user_input_list_of_shows(input) # takes in the user's mood and returns a list of shows depending on the mood
    if validate_input(input)
      if input == "1"
        show_list("Drama")
      elsif input == "2"
        show_list("Comedy")
      elsif input == "3"
        show_list("Bulls*** Action Show")
      elsif input == "4"
        show_list("Random Trash TV Show")
      elsif input == "5"
        fyre_fest
      end
    end
  end

  def show_list(genre)
      line_break
      puts "You are watching a #{genre}. Pick one for more info...(or die)"
      shows = TvShow.where(genre: genre)
      shows.each_with_index do |show, index|
         puts "#{index+1}. #{show.name}"
      end
      line_break
      gets_show(genre)
  end

  def gets_show(genre)
    show = gets.chomp
    show_bio(show, genre)
  end

  def show_bio(gets_show, genre)
    line_break
    days = {
      "1" => "Sunday",
      "2" => "Monday",
      "3" => "Tuesday",
      "4" => "Wednesday",
      "5" => "Thursday"
    }
    @current_tv_show = TvShow.find_by(weekday: days[gets_show], genre: genre)
    puts @current_tv_show.summary
    want_to_watch_show
    what_next
  end

  def confirm_watch
    @yes_no = gets.chomp
  end

  def not_streaming
    gitflix_not_netflix
    line_break
    puts "We're not a freaking streaming service!!!!!!! We're just here to tell you how trash you are."
  end

  def want_to_watch_show
    line_break
    puts "Would you like to watch this trash? (y/n)"
    line_break
    confirm_watch
    if @yes_no == "y"
      not_streaming
      puts "On a scale of 1 - 10, what is the likelihood of you actually watching this s***? Dont lie."
      line_break
      review_input = gets.chomp.to_f
        if review_input >= 7
          viewer_show = ViewerShow.find_or_create_by(viewer_id: @current_viewer.id, tv_show_id: @current_tv_show.id, rating: review_input)
          # viewer_show.update(rating: review_input)
          redirect_to_favorites
        else
          puts "Well thats unfortunate!"
          # redirect somewhere
        end
    elsif @yes_no == "n"
      puts "Aighhhhht idiot. Pick another one"
    end
  end

  def redirect_to_favorites
    line_break
    puts "Okay punk. We're just going to go ahead and add this to your list."
    puts "Feel free to watch this on Netflix, or Hulu, or Amazon. Honestly we don't care.."
    line_break
    puts "Would you like to view your dumb list? (y/n)"
    line_break
    view_favs = gets.chomp
    line_break
     if view_favs == "y"

       test = Viewer.find(@current_viewer.id).tv_shows.map do |show|
         show.name
       end

        puts test
        line_break
       # view_show_list = ViewerShow.all.select do |viewer_show|
       #       viewer_show.viewer_id == @current_viewer.id
       # end


     else
       what_next
     end
 end





  def delete
    @current_viewer.tv_shows()
  end






 def what_next
   puts "Okay then what do you want to do next idiot?"
   puts "1. Go back to show list"
   puts "2. Leave"
   next_step = gets.chomp
    if next_step == "1"
    elsif next_step == "2"
      exit
    end
 end



  def fyre_fest
    puts "Did you think we were about to redirect you to the FYRE Festival documentary?"
    puts "You should bye ashamed of yourself"
    puts "You just got..."
    ja_ruled
    puts "You are now banned from GitFlix. Goodbye."
    exit
  end


  def graphic
    music("./Music/The Office.mp3")
puts "
        GGGGGGGGGGGGG  iiii          tttt          FFFFFFFFFFFFFFFFFFFFFFlllllll   iiii
     GGG::::::::::::G i::::i      ttt:::t          F::::::::::::::::::::Fl:::::l  i::::i
   GG:::::::::::::::G  iiii       t:::::t          F::::::::::::::::::::Fl:::::l   iiii
  G:::::GGGGGGGG::::G             t:::::t          FF::::::FFFFFFFFF::::Fl:::::l
 G:::::G       GGGGGGiiiiiiittttttt:::::ttttttt      F:::::F       FFFFFF l::::l iiiiiii xxxxxxx      xxxxxxx
G:::::G              i:::::it:::::::::::::::::t      F:::::F              l::::l i:::::i  x:::::x    x:::::x
G:::::G               i::::it:::::::::::::::::t      F::::::FFFFFFFFFF    l::::l  i::::i   x:::::x  x:::::x
G:::::G    GGGGGGGGGG i::::itttttt:::::::tttttt      F:::::::::::::::F    l::::l  i::::i    x:::::xx:::::x
G:::::G    G::::::::G i::::i      t:::::t            F:::::::::::::::F    l::::l  i::::i     x::::::::::x
G:::::G    GGGGG::::G i::::i      t:::::t            F::::::FFFFFFFFFF    l::::l  i::::i      x::::::::x
G:::::G        G::::G i::::i      t:::::t            F:::::F              l::::l  i::::i      x::::::::x
 G:::::G       G::::G i::::i      t:::::t    tttttt  F:::::F              l::::l  i::::i     x::::::::::x
  G:::::GGGGGGGG::::Gi::::::i     t::::::tttt:::::tFF:::::::FF           l::::::li::::::i   x:::::xx:::::x
   GG:::::::::::::::Gi::::::i     tt::::::::::::::tF::::::::FF           l::::::li::::::i  x:::::x  x:::::x
     GGG::::::GGG:::Gi::::::i       tt:::::::::::ttF::::::::FF           l::::::li::::::i x:::::x    x:::::x
        GGGGGG   GGGGiiiiiiii         ttttttttttt  FFFFFFFFFFF           lllllllliiiiiiiixxxxxxx      xxxxxxx

"
  end

  def gitflix_not_netflix
    puts "
___ _  _ _ ____    _ ____    ____ _ ___ ____ _    _ _  _    _  _ ____ ___    _  _ ____ ___ ____ _    _ _  _
 |  |__| | [__     | [__     | __ |  |  |___ |    |  `/     |` | |  |  |     |` | |___  |  |___ |    |  `/
 |  |  | | ___]    | ___]    |__] |  |  |    |___ | _/`_    | `| |__|  |     | `| |___  |  |    |___ | _/`_
    "
  end

  def line_break
    puts ""
  end

  def bye
    puts "ARE YOU KIDDING ME??????????? GET OUT"
    puts "
.______   ____    ____  _______  _______  _______  _______  _______  _______
|   _  `  `   `  /   / |   ____||   ____||   ____||   ____||   ____||   ____|
|  |_)  |  `   `/   /  |  |__   |  |__   |  |__   |  |__   |  |__   |  |__
|   _  <    `_    _/   |   __|  |   __|  |   __|  |   __|  |   __|  |   __|
|  |_)  |     |  |     |  |____ |  |____ |  |____ |  |____ |  |____ |  |____
|______/      |__|     |_______||_______||_______||_______||_______||_______|

"
  end

  def ja_ruled
    puts "

     ██╗ █████╗     ██████╗ ██╗   ██╗██╗     ███████╗██████╗
     ██║██╔══██╗    ██╔══██╗██║   ██║██║     ██╔════╝██╔══██╗
     ██║███████║    ██████╔╝██║   ██║██║     █████╗  ██║  ██║
██   ██║██╔══██║    ██╔══██╗██║   ██║██║     ██╔══╝  ██║  ██║
╚█████╔╝██║  ██║    ██║  ██║╚██████╔╝███████╗███████╗██████╔╝
 ╚════╝ ╚═╝  ╚═╝    ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚══════╝╚═════╝

 "
  end

  def music(file)
    @player = Audite.new
    @player.load(file)
    @player.start_stream
  end

end
