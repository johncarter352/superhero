
class CLI
  
  def run 
    puts "   "
    puts "Welcoming all new Superhero fans!"
    puts "  "
    puts "What superhero would you like to know more information about?"
    puts "   "
    @name = gets.strip.downcase
    puts "   "
    API.get_hero(@name)
    puts "Choose a category you would like to get more information on:"
    array = ["Biography", "Stats", "Appearance", "Work"]
    puts array
    puts " "
    choice = gets.chomp!
    if choice == array[0]
      puts ""
    
    elsif choice == array[1]
      puts ""
    
    elsif choice == array[2]
      puts ""
   
    elsif choice == array[3] 
      puts ""
    
    else 
      puts ""
      puts "I'm sorry, we have not yet collected that data. We will work on finding that out for you. COMEBACK SOON!"
    end
  end
   


end


### handles input FROM my user and output TO my user