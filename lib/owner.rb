class Owner
  # code goes here
  
  attr_reader :species, :name
  attr_accessor :cats
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @owner = self
    @@all << self
    
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
  
  def cats
    @@pets[:cats].collect do |cat|
      cat.owner == self
    end
  end
  
  
end