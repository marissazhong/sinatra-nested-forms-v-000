class Ship
  attr_accessor :name, :booty
  @@all = []

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

  def initialize
    @name = name
    @booty = booty
    @@all << self
  end

end
