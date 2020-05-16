class API
  def self.get_hero(heroname)
    ## what is my endpoint
    url = "https://www.superheroapi.com/api.php/10213815254774657/search/#{heroname}"
    ### how do I go there and how do I get what I need (will return json)
    response = Net::HTTP.get(URI(url))
    # how do I handle that json and turn it into meaningful data?
    binding.pry
    ## how do IU make drink objects from that data 
  end
  
  
end

### service file/class. Responsible for communicating with my api - 
### going out to it, getting my information and returning it. 