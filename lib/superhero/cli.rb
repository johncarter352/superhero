
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
    #puts "Choose a category you would like to get more information on:"
    #array = ["Biography", "Stats", "Appearance", "Work"]
    #puts array
    #puts " "
    #choice = gets.strip.downcase
    #if choice = array[0]
     # puts API.get_bio
    #elsif choice = array[1]
     # puts API.get_stats
    #elsif choice = array[2]
     # puts API.get_appearance
    #elsif choice = array[3]
     # puts API.get_work
    #end
  end

end
  

### handles input FROM my user and output TO my user