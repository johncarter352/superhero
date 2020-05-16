class API
  def self.get_hero(heroname)
    ## what is my endpoint
    url = "https://superheroapi.com/api/access-token/search/name"
    ### how do I go there and how do I get what I need (will return json)
    response = Net::HTTP.get(URI(url))
    # how do I handle that json and turn it into meaningful data?
    
    ## how do IU make drink objects from that data 
  
end

### service file/class. Responsible for communicating with my api - 
### going out to it, getting my information and returning it. 