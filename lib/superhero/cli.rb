class CLI
  def run 
    puts "   "
    puts "Welcoming all new Superhero fans!"
    puts "  "
    puts "What superhero would you like to know more information about?"
    puts "   "
    @name = gets.strip.downcase
    puts "   "
    puts "Choose a category you would like to get more information on:"
    puts "Biography, Power Statistics, Appearance, or Work"
    if response = biography
      puts API.get_bio
    if response = stats
      puts API.get_stats
    if response = appearance
      puts API.get_appearance
    if response = work 
      puts API.get_work
    
    
    #API.get_hero(@name)
    
     
     
     
     
    
    
    #if
    puts "  "
    puts API.get_bio
    puts "  "
    puts API.get_stats
    puts "  "
    puts API.get_appearance
    puts "  "
    puts API.get_work
    
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