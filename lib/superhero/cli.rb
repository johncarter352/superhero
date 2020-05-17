class CLI
  def run 
    puts "   "
    puts "Hello and welcome to my app!"
    puts "  "
    puts "What superhero would you like to know more about?"
    puts "   "
    @name = gets.strip.downcase
    API.get_hero(@name)
    puts "   "
    puts "Choose a category you would like to get more information on"
    
  end
  
end

### handles input FROM my user and output TO my user