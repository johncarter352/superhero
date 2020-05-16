class CLI
  def run 
    puts "   "
    puts "Hello and welcome to my app!"
    puts "  "
    puts "What superhero would you like to know more about?"
    puts "   "
    @hero = gets.strip.downcase
    API.get_hero(@hero)
    
  end
  
end

### handles input FROM my user and output TO my user