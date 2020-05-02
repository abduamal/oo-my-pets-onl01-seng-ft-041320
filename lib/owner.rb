class Owner
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    self.all.clear
  end

  def self.all
    @@all
  end

end
