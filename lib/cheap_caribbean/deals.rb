class CheapCaribbean::Deal

  attr_accessor :name, :destination, :description, :price 
  
  @@all = []

  def initialize(name = " ", destination = " ")
    @name = name
    @destination = destination
    @description = description
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end


  def self.pick_deal(input)
    all[input]
  end
end