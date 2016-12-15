<<<<<<< HEAD
class CheapCaribbean::Deal

  attr_accessor :name, :location, :description, :price, :url

  @@all = []

  def initialize(name = " ", location = " ")
    @name = name
    @location = location
    @description = description
    @price = price
    @url = url
    scrape_details
  end

  def self.scrape_cheap_caribbean
    binding.pry
    doc = Nokogiri::HTML(open('http://www.cheapcaribbean.com/'))


  end
end
=======
  class CheapCaribbean::Deal

    attr_accessors :name, :location, :description, :url

   @@all = []

   def initialize(name = " ", location = " ")
     @name = name
     @location = location
     @description = description
     @url = url
     scrape_details
   end

   def self.scrape_cheap_caribbean
     doc = Nokogiri::HTML(open('http://www.cheapcaribbean.com/'))

   end

   end
>>>>>>> 96eaabda6c00a75e1f577f15e7491445e15fe4fe
