require 'pry'
class CommandLineInterface

  attr_accessor :current_viewer, :current_tv_show, :yes_no, :tv
  def initialize
    @current_viewer = nil
  end

  def start
      login
      greet
      input = gets.chomp
    while true
      user_input_list_of_shows(input)
    end
  end



  def login
    puts "Suhhhhhhh. How we doing?"
    puts "Please enter your name to login:"
    viewer_name = gets.chomp
    # if !valid?(viewer_name)
    @current_viewer = Viewer.find_by(name: viewer_name)
    if @current_viewer
      puts "Welcome back, #{@current_viewer.name}"
    elsif @current_viewer = Viewer.create(name: viewer_name)
      puts "WELCOMEEEEEE TO YOUUUURRRR FUTUREEEEEEEE"
    end
  end


  def greet
    puts "How you feeling today?"
    puts "1. Happy" # corresponds to a genre
    puts "2. Sad" # corresponds to a genre
    puts "3. Adventurous" # corresponds to a genre
    puts "4. Honestly no idea" # gives you a list of genre
    puts "5. BAMBOOZLED" #fyre
  end


  def mood
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
        show_list("Action")
      elsif input == "4"
        show_list("Romance")
      elsif input == "5"
        fyre_fest
      end
    end
  end

  def show_list(genre)
      puts "Looks like you're watching a #{genre}. Pick one for more info.."
      shows = TvShow.where(genre: genre)
      shows.each_with_index do |show, index|
         puts "#{index+1}. #{show.name}"
      end
      gets_show(genre)
  end

  def gets_show(genre)
    show = gets.chomp
    show_bio(show, genre)
  end


  def show_bio(gets_show, genre)
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
  end

  def confirm_watch
    @yes_no = gets.chomp
  end

  # def current_tv_show
  #   @tv
  # end

# ViewerShows.map... favorite == true

  def want_to_watch_show
    puts "Would you like to watch this? (y/n)"
    confirm_watch
    if @yes_no == "y"
      puts "Ummmmm we're not a freaking streaming service!!!"
      puts "But..."
      puts "How would you rate this movie, enter a number between 1 - 10"
        review_input = gets.chomp.to_f
          if review_input >= 7
            ViewerShow.all.map do |show|
              if show.tv_show_id == @current_tv_show.id
                favorites_list = ViewerShow.find_by(viewer_id: @current_viewer.id, tv_show_id: @current_tv_show.id, rating: review_input)
              elsif
                show.tv_show_id != @current_tv_show.id
                favorites_list = ViewerShow.create(viewer_id: @current_viewer.id, tv_show_id: @current_tv_show.id, rating: review_input)
                favorites_list += @current_tv_show.name
              end
            end
          puts "Since you like this show (kinda), we're gonna add it to your favorites list"
          puts "If this pisses you off. Would you like to view your favorites? (y/n)"
          view_favs = gets.chomp
            if view_favs == "y"
              favorites_list
            else
              puts "Ok then please leave"
              exit
            end

          else
            puts "Ok then please get out of here. This is ridiculous"
            exit
          end
    elsif @yes_no == "n"
      puts "Aiiiiight you're going back to the show list"
    end
  end


  def fyre_fest
    puts "No show for you! You're watching FYYYREEEEE FESTIVALLLLLL"
    puts "But also, we're not a streaming service so please leave now."
      exit
  end

end
