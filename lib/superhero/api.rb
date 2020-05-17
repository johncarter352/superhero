class API
   #@url = "https://www.superheroapi.com/api.php/10213815254774657/search/#{name}"
   
  def self.get_hero(name)
    url = "https://www.superheroapi.com/api.php/10213815254774657/search/#{name}"
    response = Net::HTTP.get(URI(url))
    @object = JSON.parse(response, object_class: OpenStruct)
     
     #binding.pry
  end
  
  def self.result
    @object.results
    #binding.pry
  end
  
  def self.get_bio
    @object.results[0].biography
  end 
  
  def self.get_stats
    @object.results[0].powerstats
  end 
  
  def self.get_appearance
    @object.results[0].appearance
  end 
  
  def self.get_work
    @object.results[0].work
  end 
  
  

  
  
end

### service file/class. Responsible for communicating with my api - 
### going out to it, getting my information and returning it. 