
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
    choice = array.gets.strip.downcase
    if choice = array[0]
      puts ""
      puts API.newname
      puts API.get_bio 
      puts API.newname2
      puts API.get_bio2
    elsif choice = array[1]
      puts ""
      puts API.newname
      puts API.get_stats
      puts API.newname2
      puts API.get_stats2
    elsif choice = array[2]
      puts ""
      puts API.newname
      puts API.get_appearance
      puts API.newname2
      puts API.get_appearance2
    elsif choice = array[3]
      puts ""
      puts API.newname
      puts API.get_work
      puts API.newname2
      puts API.get_work2
    end
  end

end
  

### handles input FROM my user and output TO my user