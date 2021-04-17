class Player
  attr_reader :name, :hp

  def initialize(name)
    @name = name
  end

  def hp
    @hp = 50
  end
end
