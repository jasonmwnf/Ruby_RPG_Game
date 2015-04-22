require_relative 'die'
require_relative 'player'
require_relative 'treasure_trove'

module GameTurn
  def self.take_turn(player)
    die = Die.new
    number_rolled = die.roll

    case number_rolled
    when (5..6)
      player.w00t
    when (1..2)
      player.blam
    else
      puts "#{player.name} was skipped."
    end

    treasure = TreasureTrove.random
    puts "#{player.name} found a #{treasure.name} worth #{treasure.points} points."
  end
end