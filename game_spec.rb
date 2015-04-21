require_relative 'game'

describe Game do
  before do
    @game = Game.new("Knuckleheads")

    @initial_health = 100
    @player = Player.new("moe", @initial_health)

    @game.add_player(@player)
  end

  it "increases player health by 15 if high number is rolled" do 
    allow_any_instance_of(Die).to receive(:roll).and_return(5)
    @game.play 
    expect(@player.health).to eq(@initial_health + 15)
  end

  it "does nothing to a players health if a medium number is rolled" do 
    allow_any_instance_of(Die).to receive(:roll).and_return(3)
    @game.play
    expect(@player.health).to eq(@initial_health)
  end

  it "decreases player health by 10 if a low number is rolled" do 
    allow_any_instance_of(Die).to receive(:roll).and_return(1)
    @game.play
    expect(@player.health).to eq(@initial_health - 10)
  end
end