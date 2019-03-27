require 'pry'
class CommandLineInterface

  attr_accessor :current_viewer

  def initialize
    @current_viewer = nil
  end

  def start
    login
    greet
    input = mood
    # show_list(input)
    user_input_list_of_shows(input)
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


  def user_input_list_of_shows(input) # takes in the user's mood and returns a list of shows depending on the mood
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

  def show_list(input)
    puts "Looks like you're watching a #{input}. Pick one for more info.."
    shows = TvShow.where(genre: input)
      shows.each_with_index do |show, index|
         puts "#{index+1}. #{show.name}"
      end
    show = gets.chomp
  end

  def fyre_fest
    puts "No show for you! You're watching FYYYREEEEE FESTIVALLLLLL"
  end

  def bios(input)
    if input == "1"
      show_bio(weekday: "Sunday")
    elsif input == "2"
      show_bio("Comedy")
    elsif input == "3"
      show_bio("Action")
    elsif input == "4"
      show_bio("Romance")
    elsif input == "5"
      fyre_fest
    end
  end
  #
  def show_bio(input)


  end






end
