class Pirate
  attr_accessor :name, :weight, :height
  @@all = []
  def initialize(properties)
    @name = properties[:name]
    @weight = properties[:weight]
    @height = properties[:height]
    @@all << self 
  end
  
  def self.all
    @@all 
  end
end