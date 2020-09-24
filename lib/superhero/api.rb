class API
   
  def self.get_hero(name)
    url = "https://www.superheroapi.com/api.php/10213815254774657/search/#{name}"
    response = Net::HTTP.get(URI(url))
    object = JSON.parse(response)
    @results = object["results"]
    bio = @results[0]["biography"]
    stats = @results[0]["powerstats"]
    appearance = @results[0]["appearance"]
    work = @results[0]["work"]
    Hero.new(name, bio, stats, appearance, work)
  end

end
