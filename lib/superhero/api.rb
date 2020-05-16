class API
  def self.get_hero(name)
    ## what is my endpoint
    url = "https://www.superheroapi.com/api.php/10213815254774657/search/#{name}"
    ### how do I go there and how do I get what I need (will return json)
    response = Net::HTTP.get(URI(url))
  
    # how do I handle that json and turn it into meaningful data?
     results = JSON.parse(response)["results"]
    
    ## how do IU make drink objects from that data 
     binding.pry
  end
  
  
end

### service file/class. Responsible for communicating with my api - 
### going out to it, getting my information and returning it. 