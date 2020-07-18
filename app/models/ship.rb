class Ship
  attr_accessor :name, :type, :booty 
  @@all = []
  def initialize(properties)
    @name = properties[:name]
    @type = properties[:type]
    @booty = properties[:booty]
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def self.clear
    @@all.clear
  end
end