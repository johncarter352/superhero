class API
   
  def self.get_hero(name)
    url = "https://www.superheroapi.com/api.php/10213815254774657/search/#{name}"
    response = Net::HTTP.get(URI(url))
    object = JSON.parse(response)
    @results = object["results"]
    cli = CLI.new
      if object["response"] == "error"
      puts "I am sorry, we do not have information on that character. Please comeback soon as we work to find more information on your Superhero!"
      puts ""
      cli.replay
    else
  end
    bio = @results[0]["biography"]
    stats = @results[0]["powerstats"]
    appearance = @results[0]["appearance"]
    work = @results[0]["work"]
    Hero.new(name, bio, stats, appearance, work)
  end

end
