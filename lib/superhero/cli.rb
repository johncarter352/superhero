class CLI
  def run 
    puts "   "
    puts "Hello and welcome to my app!"
    puts "  "
    puts "What superhero would you like to know more about?"
    puts "   "
    @heroname = gets.strip.downcase
    API.get_hero(@heroname)
    
  end
  
end

### handles input FROM my user and output TO my user