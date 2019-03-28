require 'json'

def get_shows_from_api(input)


  #make the web request
  response_string = RestClient.get("http://api.tvmaze.com/shows")
  response_hash = JSON.parse(response_string)
  data = response_hash["genres"].find do |genre|
      if genre
        puts response_hash["name"]
      end
  end

  data["films"].collect do |film|
    response_str = RestClient.get(film)
    films = JSON.parse(response_str)
    # puts films
  end


end

# player = Audite.new
#
# 
#
# player.load('./Music/The Office.mp3')
# player.start_stream
# player.forward(20)
# player.thread.join
