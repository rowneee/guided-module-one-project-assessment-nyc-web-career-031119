require 'pry'
class CommandLineInterface

  def start
    greet
    input = mood
    print_happy_shows(input)
  end

  def greet
    puts 'Suhhhhhhh Mod 1. How we doing?'
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

# gives you movie options for each mood
  # def happy
  #   puts "1. "
  #   puts "2. "
  # end

# every time someone picks a mood, we call this method
  def print_happy_shows(input)
      puts "Looks like you're watching a drama"
      drama = TvShow.where(genres: "Drama")
        puts "1. #{drama}"
        # "2. #{drama}"
        # "3. #{drama}"
        # "4. #{drama}"
        # "5. #{drama}"
        shows = gets.chomp
    end
  end

  def print_sad_shows(input)
    if input = "2"
      puts "Looks like you're watching a comedy"
      comedy = TvShow.where(genres: "Comedy")
        puts "1. #{comedy}"
        # "2. #{comedy}"
        # "3. #{comedy}"
        # "4. #{comedy}"
        # "5. #{comedy}"
        shows = gets.chomp
    end
  end

  def user_input_list_of_shows(input) # takes in the user's mood and returns a list of shows depending on the mood
    if input = "1"
      print_happy_shows
    elsif input = "2"
      print_sad_shows
    elsif input = "3"
      print_adventurous_shows
    elsif input = "4"
      print_random_shows
    elsif input = "4"
      print_fyre
  end

      # "2. #{genre}"
      # "3. #{genre}"
      # "4. #{genre}"
      # "5. #{genre}"


  end


end
