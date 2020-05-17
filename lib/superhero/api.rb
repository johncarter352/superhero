class API
  def self.get_hero(name)
    url = "https://www.superheroapi.com/api.php/10213815254774657/search/#{name}"
   
    response = Net::HTTP.get(URI(url))
  
   
      @object = JSON.parse(response, object_class: OpenStruct)
    
     @object.results[0].name
     @object.results[0].biography
     @object.results[0].powerstats
     @object.results[0].appearance
     @object.results[0].work
     
     #binding.pry
  end
  
  def self.get_bio
  end 
  
  def self.get_stats
  end 
  
  def self.get_appearance
  end 
  
  def self.get_work
  end 
  
  

  
  
end

### service file/class. Responsible for communicating with my api - 
### going out to it, getting my information and returning it. 