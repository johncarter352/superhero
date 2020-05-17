class API
  def self.get_hero(name)
    url = "https://www.superheroapi.com/api.php/10213815254774657/search/#{name}"
   
    response = Net::HTTP.get(URI(url))
  
   
     object = JSON.parse(response, object_class: OpenStruct)
  
     
     #binding.pry
  end
  
    object.results[0].name
     object.results[0].biography
     object.results[0].powerstats
     object.results[0].appearance
     object.results[0].work
  
  
end

### service file/class. Responsible for communicating with my api - 
### going out to it, getting my information and returning it. 