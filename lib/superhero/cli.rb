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
    puts "Biography, Power Statistics, Appearance, or Work"
    @response = gets.strip.downcase
    if response = @biography
      puts API.get_bio(@biography)
    elsif response = @stats
      puts API.get_stats(@stats)
    elsif response = @appearance
      puts API.get_appearance(@appearance)
    elsif response = @work
      puts API.get_work(@work)
    end
  end
  
  end
  

### handles input FROM my user and output TO my user