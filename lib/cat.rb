# class Cat
#   # code goes here
  
#   attr_accessor :owner, :mood
#   attr_reader :name
  
#   @@all = []
  
#   def initialize(name,owner)
#     @name = name
#     @owner = owner
#     @mood = "nervous"
#     @@all << self
#     owner.pets=(self)
#   end
  
#   def self.all
#     @@all
#   end
# end

class Cat
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name

  @@all = [ ]

  def initialize(name, owner)
      @name = name
      @owner = owner
      @@all << self 
      @owner.pets=(self)
      @mood = "nervous"
  end

  def self.all
      @@all
  end