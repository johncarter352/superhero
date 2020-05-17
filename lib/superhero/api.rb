class API
   #@url = "https://www.superheroapi.com/api.php/10213815254774657/search/#{name}"
   
  def self.get_hero(name)
    url = "https://www.superheroapi.com/api.php/10213815254774657/search/#{name}"
    response = Net::HTTP.get(URI(url))
    @object = JSON.parse(response, object_class: OpenStruct)
     
    
  end
  
  def self.result
    @object.results
   
  end
  
  def self.get_bio
    bio = @object.results[0].biography
    bio.each do |a|
      
    end
    bio
  end 
  
  def self.get_stats
    ps = @object.results[0].powerstats
    ps.each do |a|
      puts a 
    end
    ps
  end 
  
  def self.get_appearance
    app = @object.results[0].appearance
    app.each do |a|
      puts a 
    end
  end 
  
  def self.get_work
   work = @object.results[0].work
   work.each do |a|
     puts a 
   end
 end
  
end

### service file/class. Responsible for communicating with my api - 
### going out to it, getting my information and returning it. 