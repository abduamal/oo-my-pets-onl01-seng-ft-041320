class Owner
  attr_accessor :cats, :dogs, :mood, :owner
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def self.all
    @@all
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

  def cats
    Cat.all.select { |cat| cat.owner == self}
  end

  def dogs
    Dog.all.select { |cat| cat.owner == self}
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

end
