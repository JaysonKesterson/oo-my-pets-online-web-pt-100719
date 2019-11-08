class Owner
  # code goes here
  
  attr_reader :species, :name
  attr_accessor :owner, :pets
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @owner = self
    @@all << self
    @pets = []
    
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all = []
  end
  
  def pets=(pet)
    @pets << pet
  end
  
  def cats
    @pets.each do |pet|
      pet.class == Cat
    end
  end
  
  
end