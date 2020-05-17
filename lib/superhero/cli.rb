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
    puts '"Biography", "Power Statistics", "Appearance", or "Work"?'
    response = gets.strip.downcase
    if response = "Biography"
      puts API.get_bio
    elsif response == "Power Statistics"
      puts API.get_stats
    elsif response == "Appearance"
      puts API.get_appearance
    elsif response == "Work"
      puts API.get_work
    end
  end
  
  end
  

### handles input FROM my user and output TO my user