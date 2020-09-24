
class CLI
  
  def run
    puts "   "
    puts "Welcoming all new Superhero fans!"
    information
  end
    
  def information
    puts "  "
    puts "What superhero would you like to know more information about?"
    puts "   "
    @name = gets.strip.downcase
    puts "   "
    new_hero = API.get_hero(@name)
    puts "Choose a category you would like to get more information on:"
    array = ["BIOGRAPHY", "STATS", "APPEARANCE", "WORK"]
    puts array
    puts " "
    choice = gets.chomp.upcase!
    if choice == array[0]
      puts ""
      puts new_hero.biography
    
    elsif choice == array[1]
      puts ""
      puts new_hero.stats
      
    elsif choice == array[2]
      puts ""
      puts new_hero.appearance
   
    elsif choice == array[3] 
      puts ""
      puts new_hero.work
    else 
      puts ""
      puts "I'm sorry, we have not yet collected that data. We will work on finding that out for you. COMEBACK SOON!"
    end
    puts ""
    loop
  end
  
  def loop
    puts "Would you like to know more about another Superhero?"
    array = ["YES", "NO"]
    puts ""
    puts array
    choice = gets.chomp.upcase!
    if choice == array[0]
     information
    else 
      puts ""
      puts "Thank you for visiting to learn more about Superheroes. Hope to see you back soon!"
    end
  end
   


end

