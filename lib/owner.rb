class Owner
  attr_accessor :cats, :dogs, :mood, :owner
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
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

  def cats(name, owner)
    @cats << Cat.new(name)
    @cats
  end

end
