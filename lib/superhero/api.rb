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
  end 
  
  def self.get_appearance
  end 
  
  def self.get_work
  end 
  
  

  
  
end

### service file/class. Responsible for communicating with my api - 
### going out to it, getting my information and returning it. 