class CLI
  def run 
    puts "   "
    puts "Hello and welcome to my app!"
    puts "  "
    puts "What superhero would you like to know more about?"
    puts "   "
    @name = gets.strip.downcase
    API.get_hero(@name)
     ## if name has multiple results ask user which name he is refering to 
     
     ## once user chooses ask user which category he would like to have infomation about
     ## list categories
     ## once user picks catergory display results
     ## at the end of display ask user if he wants to research a different category if yes send back to list if no ask if he want to know about a different hero 
     ##if no for both exit!
     
    
    puts "   "
    puts "Choose a category you would like to get more information on"
    
  end
  
  def category
     #@object.results[0].name
     #@object.results[0].biography
     #@object.results[0].powerstats
     #@object.results[0].appearance
     #@object.results[0].work
   end
    
  
end

### handles input FROM my user and output TO my user