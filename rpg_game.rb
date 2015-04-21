class Player
  attr_accessor :name
  attr_reader :health

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end

  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end

  def blam
    @health -= 10 
    puts "#{@name} got blammed!"
  end

  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end

  def score
    @health + @name.length
  end
end


player1 = Player.new("moe")
puts player1

player2 = Player.new("larry", 60)
puts player2.name = "Lawrence"

player3 = Player.new("curly", 125)
player3.w00t
puts player3.health

players = [player1, player2, player3]
size = players.size
puts "There are #{size} players in the game."

players.each do |player|
  puts player
end

players.each do |player|
  puts player.health
end